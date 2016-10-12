(cl:in-package :sdl2-ffi)

(autowrap:c-include
 '(sdl2 autowrap-spec "SDL2.h")
  :accessor-package :sdl2-ffi.accessors
  :function-package :sdl2-ffi.functions
  :spec-path '(sdl2 autowrap-spec)
  ;; gcc system defines: echo | gcc -dM -E -
  ;; gcc system includes: echo | gcc -xc -E -v -
  :sysincludes 
  (cl:list 
   "/usr/local/include"
   "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/6.1.0/include"
   "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include"
   "/usr/include")
  :exclude-arch ("i686-pc-linux-gnu"
		 "x86_64-pc-linux-gnu"
		 "i686-pc-windows-msvc"
		 "x86_64-pc-windows-msvc"
		 "i686-apple-darwin9"
		 ;; :exclude-arch "x86_64-apple-darwin9"
		 "i386-unknown-freebsd"
		 "x86_64-unknown-freebsd")
  :exclude-sources ("/usr/local/lib/clang/([^/]*)/include/(?!stddef.h)"
                    "/usr/include/"
                    "/usr/include/arm-linux-gnueabihf"
                    "/usr/include/X11/")
  :include-sources ("stdint.h"
                    "bits/types.h"
                    "machine/_types.h"
                    "sys/types.h"
		    "_types/"
                    "SDL2")
  :exclude-definitions ("SDL_LogMessageV"
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
  :release-p cl:t)
