(cl:in-package :sdl2-ffi)
(cl:eval-when 
    (:compile-toplevel :load-toplevel :execute)
  (cl:pushnew (cl:cons "INF" sb-ext:long-float-positive-infinity) 
	      cl-json::+json-lisp-symbol-tokens+))
(autowrap:c-include
 '(sdl2 autowrap-spec "SDL2.h")
 :accessor-package :sdl2-ffi.accessors
 :function-package :sdl2-ffi.functions
 :spec-path '(sdl2 autowrap-spec)
 :exclude-sources ("/usr/local/lib/clang/([^/]*)/include/(?!stddef.h)"
                   "/usr/include/"
                   "/usr/include/arm-linux-gnueabihf"
                   "/usr/include/X11/"
		   #+darwin
		   "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/"
		   #+darwin
		   "/opt/X11/include"
		   )
 :include-sources ("stdint.h"
                   "bits/types.h"
                   "sys/types.h"
                   "bits/stdint"
                   "machine/_types.h"
		   #+darwin
		   "i386/_types.h"
		   #+darwin
		   "include/_types/"
		   #+darwin
		   "include/sys/_types/"
                   "SDL2")
 :sysincludes `,(cl:append
                 #+openbsd (cl:list "/usr/X11R6/include")
		 #+darwin
		 (cl:list "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include")
                 #+(and unix (not darwin))
                 (cl:list "/usr/lib/gcc/x86_64-pc-linux-gnu/7.3.1/include/"))
 :exclude-definitions ("SDL_main"
                       "SDL_LogMessageV"
                       "SDL_vsnprintf"
                       "_inline$"
                       "^_mm_")
 :include-definitions ("^XID$" "^Window$" "^Display$" "^_XDisplay$")
 :symbol-exceptions (("SDL_Log" . "SDL-LOGGER")
                     ("SDL_log" . "SDL-LOGN")
                     ("SDL_RWops" . "SDL-RWOPS")
                     ("SDL_GLContext" . "SDL-GLCONTEXT")
                     ("SDL_GLattr" . "SDL-GLATTR")
                     ("SDL_GLprofile" . "SDL-GLPROFILE")
                     ("SDL_GLcontextFlag" . "SDL-GLCONTEXT-FLAG")
                     ("SDL_SysWMinfo" . "SDL-SYSWM-INFO")
                     ("SDL_SysWMmsg" . "SDL-SYSWM-MSG")
                     ("SDL_TRUE" . "TRUE")
                     ("SDL_FALSE" . "FALSE"))
 :no-accessors cl:t
 :trace-c2ffi cl:t
 :release-p cl:nil)
