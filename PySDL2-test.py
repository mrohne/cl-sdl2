import sys
import sdl2.ext
import sdl2.syswm

sdl2.ext.init()
processor = sdl2.ext.TestEventProcessor()

window = sdl2.ext.Window("Hello World!", size=(640, 480), 
                         flags=
                         sdl2.SDL_WINDOW_SHOWN|
                         sdl2.SDL_WINDOW_RESIZABLE
                         )

wminfo = sdl2.syswm.SDL_SysWMinfo()

processor.run(window)

sdl2.SDL_DestroyWindow(window.window)

sdl2.ext.quit()
