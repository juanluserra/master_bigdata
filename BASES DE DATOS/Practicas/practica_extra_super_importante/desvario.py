from pynput import keyboard
import time
from pathlib import Path
FILE_PATH = Path(__file__).resolve().parent

def on_press(key: keyboard.Key) -> None:
    """
    Maneja el evento de pulsación de una tecla.
    Si la tecla presionada es '0', abre un archivo con un nombre basado en la fecha actual
    y escribe la marca de tiempo actual en él. Si la tecla presionada es '9', hace lo mismo
    pero en un archivo diferente.
    Args:
        key (keyboard.Key): La tecla que fue presionada.
    Returns:
        None
    """    
    
    try:
        if key.char == '0':
            # Abre el archivo 'mentiendeono_tiempo.txt' en modo de añadir y escribe la marca de tiempo actual
            with open(FILE_PATH / f'desvario_init_{time.strftime("%d%m%y")}.txt', 'a') as file:
                file.write(str(time.time()) + "\n")

        if key.char == '9':
            with open(FILE_PATH / f'desvario_end_{time.strftime("%d%m%y")}.txt', 'a') as file:
                file.write(str(time.time()) + "\n")
        
        
    except AttributeError:
        pass


def main() -> None:
    """
    Función principal que realiza las siguientes acciones:
    1. Verifica si el archivo 'mentiendeono_contador.txt' existe en la ruta especificada.
       - Si el archivo no existe, lo crea y escribe "0\n" en él.
    2. Inicia un listener de teclado que llama a la función `on_press` cada vez que se presiona una tecla.
       - El listener se ejecuta hasta que se detenga manualmente.
    """
    with keyboard.Listener(on_press=on_press) as listener:
        listener.join()


if __name__ == "__main__": 
    main()
