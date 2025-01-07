import dash
from dash import dcc
from dash import html
import pandas as pd
import plotly.express as px
import plotly.graph_objects as go
import datetime
import geopandas as gpd
from dash.dependencies import Input, Output


geojson_file = 'spain-provinces.geojson'
gdf = gpd.read_file(geojson_file)


df = pd.read_csv('datos_futbol.csv')

# Convertir la columna 'Fecha del Partido' a tipo fecha
df['Fecha del Partido'] = pd.to_datetime(df['Fecha del Partido'])

app = dash.Dash(__name__)

# Obtener una lista de tipos de cliente únicos
tipos_de_cliente = df['Categoria Equipo'].unique()



colores = px.colors.qualitative.Set1


app.layout = html.Div([
    html.H1('Rendimiento de LemonAnalytics según tipo de cliente'),

    # Dropdown para seleccionar el tipo de cliente
    dcc.Dropdown(
        id='cliente-dropdown',
        options=[{'label': cliente, 'value': cliente} for cliente in tipos_de_cliente],
        value=tipos_de_cliente.tolist()[0],  # Valor predeterminado al primer tipo de cliente
        multi=False
    ),
    
    html.Div([
        dcc.Graph(id='line-chart', style={'width': '100%', 'height': '30vh'})
    ], style={'width': '45%', 'float': 'left'}),


    html.Div([
        dcc.Graph(id='bar-chart', style={'width': '100%', 'height': '30vh'})
    ], style={'width': '45%', 'float': 'right'}),


html.Div([
    dcc.Graph(id='bubble-camera', style={'width': '100%', 'height': '60vh'})
], style={'width': '45%', 'float': 'left'}),


html.Div([
    dcc.Graph(id='spain-map', style={'width': '100%', 'height': '60vh'})
],style={'width': '45%', 'float': 'right'})


])

@app.callback(
    Output('line-chart', 'figure'),
    [Input('cliente-dropdown', 'value')]
)
def update_graph(selected_cliente):
    fig = px.line()
    
    filtered_df = df[df['Categoria Equipo'] == selected_cliente]
    
    today = datetime.date.today()
    five_months_ago = today - pd.DateOffset(months=5)
    
    filtered_df = filtered_df[filtered_df['Fecha del Partido'] >= five_months_ago]
    
    porcentaje_correctos_mes = filtered_df.groupby(filtered_df['Fecha del Partido'].dt.to_period('M')).apply(lambda x: (1 - x['Corregido'].sum() / len(x)) * 100)

    df_porcentaje = pd.DataFrame({
        'Mes': porcentaje_correctos_mes.index.to_timestamp(),
        'Porcentaje': porcentaje_correctos_mes.values
    })

    fig.add_scatter(x=df_porcentaje['Mes'], y=df_porcentaje['Porcentaje'], mode='lines', name=selected_cliente, line=dict(color='blue'))

    fig.update_layout(
        title=f'Porcentaje de eventos correctamente recopilados en los últimos 5 meses',
        xaxis_title='Mes',
        yaxis_title='Porcentaje (%)'
    )

    fig.update_xaxes(
        tickmode='array',
        tickvals=df_porcentaje['Mes'], 
        ticktext=[fecha.strftime('%b %Y') for fecha in df_porcentaje['Mes']])  
    

    return fig


@app.callback(
    Output('bar-chart', 'figure'),
    [Input('cliente-dropdown', 'value')]
)
def update_bar_chart(selected_cliente):
    filtered_df = df[df['Categoria Equipo'] == selected_cliente]
    eventos_fallados = filtered_df[filtered_df['Corregido'] == 1]  
    eventos_correctos = filtered_df[filtered_df['Corregido'] == 0]  
    
    conteo_eventos_fallados = eventos_fallados['Tipo de Evento'].value_counts()
    conteo_eventos_correctos = eventos_correctos['Tipo de Evento'].value_counts()
    
    bar_fig = go.Figure()
    bar_fig.add_trace(go.Bar(x=conteo_eventos_correctos.index, y=conteo_eventos_correctos.values, name='Eventos Correctos', marker_color='blue'))
    bar_fig.add_trace(go.Bar(x=conteo_eventos_fallados.index, y=conteo_eventos_fallados.values, name='Eventos Fallados', marker_color='red'))

    bar_fig.update_layout(
        title=f'Eventos por tipo y porcentaje de corrección',
        xaxis_title='Tipo de Evento',
        yaxis_title='Ocurrencias',
        barmode='stack'  # Para apilar las barras
    )

    return bar_fig



@app.callback(
    Output('bubble-camera', 'figure'),
    [Input('cliente-dropdown', 'value')]
)


def update_bubble_chart(selected_cliente):
    
    filtered_df = df[df['Categoria Equipo'] == selected_cliente]
    
    tipos_de_camara = filtered_df['Cámara'].unique()
    
    resultados = []
    
    for tipo_camara in tipos_de_camara:
        camara_df = filtered_df[filtered_df['Cámara'] == tipo_camara].copy()


        formato = "%H:%M:%S"
        # Calcular el tiempo medio de captura para esta cámara
        camara_df['Hora de Recolección'] = pd.to_datetime(camara_df['Hora de Recolección'], format = formato)
        camara_df['Hora del Evento'] = pd.to_datetime(camara_df['Hora del Evento'], format = formato)
        
        
        camara_df['tiempo_captura'] = (camara_df['Hora de Recolección'] - camara_df['Hora del Evento']).dt.total_seconds()
        camara_df['tiempo_captura'] = camara_df['tiempo_captura'].apply(lambda x: x if x >= 0 else x + 86400)  # Sumar 24 horas si es negativo
        
        tiempo_medio_captura = camara_df['tiempo_captura'].mean()
        
        tasa_eventos_correctos = (1 - camara_df['Corregido'].mean())*100 
        
        precio = camara_df['Precio'].iloc[0]
        abreviatura = camara_df['Camara abreviatura'].iloc[0] 
        
        resultados.append({'Tipo de Cámara': tipo_camara, 'Tiempo Medio de Captura': tiempo_medio_captura, 'Precio': precio, 'Abreviatura': abreviatura,'Tasa de eventos correctos': tasa_eventos_correctos})

    fig = px.scatter(resultados, 
                     x='Tasa de eventos correctos', 
                     y='Tiempo Medio de Captura', 
                     text='Abreviatura', 
                     color='Precio',
                     color_continuous_scale='YlGnBu',  
                     hover_data=['Tipo de Cámara', 'Abreviatura']) 
    
    fig.update_traces(textfont=dict(color='orange'), marker=dict(size=50))

    fig.update_layout(
        title='Rendimiento de las cámaras',
        xaxis_title='Eventos correctamente recopilados (%)',
        yaxis_title='Tiempo medio de captura (ms)',
        showlegend=False
    )

    return fig



@app.callback(
    Output('spain-map', 'figure'),
    [Input('cliente-dropdown', 'value')]
)
def update_spain_map(selected_cliente):
    fig = px.choropleth_mapbox(
        gdf,
        geojson=gdf.geometry,
        color=None,  
        mapbox_style="carto-positron",
        center={"lat": 37.98, "lon": -1.13},  
    )
    
    filtered_df = df[df['Categoria Equipo'] == selected_cliente]
    equipos_unicos = filtered_df['Equipo Local'].unique()
    coordenadas_equipos = filtered_df[['Equipo Local', 'Coordenada X', 'Coordenada Y']].drop_duplicates()

    for index, row in coordenadas_equipos.iterrows():
        equipo = row['Equipo Local']
        coordenada_x = row['Coordenada X']
        coordenada_y = row['Coordenada Y']  
        
        estadio = df[df['Equipo Local'] == equipo]['Estadio'].iloc[0]
        camaras = df[df['Estadio'] == estadio]['Camara abreviatura'].unique()

        tasa_eventos_corregidos = (1 - df[(df['Estadio'] == estadio)]['Corregido'].mean())*100

        texto_marcador = f"Equipo: {equipo}<br>Estadio: {estadio}<br>Cámaras: {', '.join(camaras)}<br>Eventos recopilados correctamente (%): {tasa_eventos_corregidos:.2f}"

        fig.add_trace(
            go.Scattermapbox(
                lat=[coordenada_y],
                lon=[coordenada_x],
                mode='markers',
                marker=dict(size=10, color='red'),
                text=texto_marcador,
                name=equipo
            )
        )
        
        fig.update_layout(
        title='Mapa de clientes'
    )

    return fig


if __name__ == '__main__':
    app.run_server(debug=True)

