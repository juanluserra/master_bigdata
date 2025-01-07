#import "@preview/cetz:0.3.1"
#import "@preview/chic-hdr:0.4.0": *

#let template_umu(title: "", subtitle: "", authors: (), date: "", location: "", body) = {
  //--------------------
  // Creamos la portada
  //--------------------
  align(center, image("logo_umu.png", width: 70%))

  // Titulo
  v(5em) + align(center)[
      #block(smallcaps(text(weight: 700, 2em, title)))
    ]

  // Subtitulo
  if subtitle != ""{
    v(1em)
    align(center)[
      #block(smallcaps(text(weight: 700, 1.7em, subtitle)))
    ]
  }

  // Lineas de decoracion
  align(
    center,
    cetz.canvas({
      import cetz.draw: *
      let y = -.1
      let r = 1.05
      let w = 1.5pt
      let x = 7
      line((-x, 0), (x, 0), stroke: w)
      line((-x/r, y), (x/r, y), stroke: w)
      line((-x/r, -y), (x/r, -y), stroke: w)
    })
  )

  // Autores
  v(3em)
  pad(
    top: 0.8em,
    bottom: 0.8em,
    x: 2em,
    grid(
      columns: (1fr,) * authors.len(),
      gutter: 1em,
      ..authors.map(author => align(center)[
        *#author.name* \
        #author.affiliation
      ]),
    ),
  )

  // Fecha y decoracion
  if date != "" or location != ""{
    v(5em)
    align(center)[
      #v(-.5em)
      #if location != "" {
        location
      } \
      #if date != "" {
        date
      }
      #v(-.4em)
      
      #cetz.canvas({
        import cetz.draw: *
        let y = .15
        let x = 1
        line((-x,y),(x,y), stroke: 1pt)
        line((-x/1.5,0),(x/1.5,0), stroke: 1pt)
      })
    ] 
  }
  
  
    
  
  // Establecemos las reglas del documento
  set text(
    lang: "es",
    font: "New Computer Modern",
    hyphenate: false,
  )
  show heading: it => {v(0.2em) + it + v(0.2em)}
  set heading(numbering: "1.")
  set page(
    number-align: right,
    numbering: "1",
    paper: "a4",
  )
  set par(
    leading: 0.75em,
    justify: true,
    spacing: 1.2em
  ) 
  set list(
     indent: 1em
  )
  set enum(
    indent: 1em
  )
  
  // Creamos el índice
  pagebreak()
  strong(outline(indent: true))

  // Insertamos el contenido
  pagebreak()
  counter(page).update(1)
  show: chic.with(
    chic-footer(
      center-side: context(here().page()-2)
    ),
    chic-header(
      right-side: strong(smallcaps(title))
    ),
    chic-separator(
      chic-styled-separator("double-line"),
    ),
    chic-offset(1em),
    chic-height(5em)
  )
  body
  
}