from pynput import keyboard
import time
from pathlib import Path
FILE_PATH = Path(__file__).resolve().parent

def on_press(key: keyboard.Key) -> None:
    """
    Maneja el evento cuando se presiona una tecla. Si la tecla presionada es '0', realiza las siguientes acciones:
    1. Añade la marca de tiempo actual a 'mentiendeono_tiempo.txt'.
    2. Lee la última línea de 'mentiendeono_contador.txt' para obtener el valor actual del contador.
    3. Incrementa el valor del contador en 1 y añade el nuevo valor a 'mentiendeono_contador.txt'.
    Args:
        key (keyboard.Key): La tecla que fue presionada.
    Nota:
        Si la tecla no tiene un atributo 'char' (por ejemplo, teclas especiales), la función ignorará el evento silenciosamente.
    """
    try:
        if key.char == '0':
            # Abre el archivo 'mentiendeono_tiempo.txt' en modo de añadir y escribe la marca de tiempo actual
            with open(FILE_PATH / 'mentiendeono_tiempo.txt', 'a') as file:
                file.write(str(time.time()) + "\n")
            
            # Abre el archivo 'mentiendeono_contador.txt' en modo de lectura y obtiene el valor actual del contador
            with open(FILE_PATH / 'mentiendeono_contador.txt', 'r') as file:
                lines = file.readlines()
                contador = int(lines[-1].strip())
                
            # Abre el archivo 'mentiendeono_contador.txt' en modo de añadir y escribe el nuevo valor del contador incrementado en 1
            with open(FILE_PATH / 'mentiendeono_contador.txt', 'a') as file:
                file.write(str(contador + 1) + "\n")
                
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
    if not (FILE_PATH / 'mentiendeono_contador.txt').exists():
                with open(FILE_PATH / 'mentiendeono_contador.txt', 'w') as file:
                    file.write("0\n")
                    
    with keyboard.Listener(on_press=on_press) as listener:
        listener.join()


if __name__ == "__main__": 
    main()
