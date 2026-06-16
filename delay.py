from pynput import mouse
import time

middle_press_time = None

def on_click(x, y, button, pressed):
    global middle_press_time

    if button == mouse.Button.middle:
        if pressed:
            middle_press_time = time.time()
            print("Middle button pressed")
        else:
            if middle_press_time is not None:
                duration = time.time() - middle_press_time
                print(f"Middle button held for {duration:.3f} seconds")
                middle_press_time = None

with mouse.Listener(on_click=on_click) as listener:
    listener.join()