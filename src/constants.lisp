(in-package :sdl2)

;;; pixel formats
(defconstant +pixelformat-unknown+ sdl2-ffi:+sdl-pixelformat-unknown+)
(defconstant +pixelformat-index1lsb+ sdl2-ffi:+sdl-pixelformat-index1lsb+)
(defconstant +pixelformat-index1msb+ sdl2-ffi:+sdl-pixelformat-index1msb+)
(defconstant +pixelformat-index14lsb+ sdl2-ffi:+sdl-pixelformat-index4lsb+)
(defconstant +pixelformat-index14msb+ sdl2-ffi:+sdl-pixelformat-index4msb+)
(defconstant +pixelformat-index8+ sdl2-ffi:+sdl-pixelformat-index8+)
(defconstant +pixelformat-rgb332+ sdl2-ffi:+sdl-pixelformat-rgb332+)
(defconstant +pixelformat-rgb444+ sdl2-ffi:+sdl-pixelformat-rgb444+)
(defconstant +pixelformat-rgb555+ sdl2-ffi:+sdl-pixelformat-rgb555+)
(defconstant +pixelformat-bgr555+ sdl2-ffi:+sdl-pixelformat-bgr555+)
(defconstant +pixelformat-argb4444+ sdl2-ffi:+sdl-pixelformat-argb4444+)
(defconstant +pixelformat-rgba4444+ sdl2-ffi:+sdl-pixelformat-rgba4444+)
(defconstant +pixelformat-abgr4444+ sdl2-ffi:+sdl-pixelformat-abgr4444+)
(defconstant +pixelformat-argb1555+ sdl2-ffi:+sdl-pixelformat-argb1555+)
(defconstant +pixelformat-argba5551+ sdl2-ffi:+sdl-pixelformat-rgba5551+)
(defconstant +pixelformat-abgr1555+ sdl2-ffi:+sdl-pixelformat-abgr1555+)
(defconstant +pixelformat-bgra5551+ sdl2-ffi:+sdl-pixelformat-bgra5551+)
(defconstant +pixelformat-rgb565+ sdl2-ffi:+sdl-pixelformat-rgb565+)
(defconstant +pixelformat-bgr565+ sdl2-ffi:+sdl-pixelformat-bgr565+)
(defconstant +pixelformat-rgb24+ sdl2-ffi:+sdl-pixelformat-rgb24+)
(defconstant +pixelformat-bgr24+ sdl2-ffi:+sdl-pixelformat-bgr24+)
(defconstant +pixelformat-rgb888+ sdl2-ffi:+sdl-pixelformat-rgb888+)
(defconstant +pixelformat-rgbx8888+ sdl2-ffi:+sdl-pixelformat-rgbx8888+)
(defconstant +pixelformat-bgr888+ sdl2-ffi:+sdl-pixelformat-bgr888+)
(defconstant +pixelformat-bgrx8888+ sdl2-ffi:+sdl-pixelformat-bgrx8888+)
(defconstant +pixelformat-argb8888+ sdl2-ffi:+sdl-pixelformat-argb8888+)
(defconstant +pixelformat-rgba8888+ sdl2-ffi:+sdl-pixelformat-rgba8888+)
(defconstant +pixelformat-abgr8888+ sdl2-ffi:+sdl-pixelformat-abgr8888+)
(defconstant +pixelformat-bgra8888+ sdl2-ffi:+sdl-pixelformat-bgra8888+)
(defconstant +pixelformat-rgb2101010+ sdl2-ffi:+sdl-pixelformat-argb2101010+)
(defconstant +pixelformat-rgba32+ sdl2-ffi:+sdl-pixelformat-rgba8888+ #+never sdl2-ffi:+sdl-pixelformat-rgba32+)
(defconstant +pixelformat-argb32+ sdl2-ffi:+sdl-pixelformat-argb8888+ #+never sdl2-ffi:+sdl-pixelformat-argb32+)
(defconstant +pixelformat-bgra32+ sdl2-ffi:+sdl-pixelformat-bgra8888+ #+never sdl2-ffi:+sdl-pixelformat-bgra32+)
(defconstant +pixelformat-abgr32+ sdl2-ffi:+sdl-pixelformat-abgr8888+ #+never sdl2-ffi:+sdl-pixelformat-abgr32+)
(defconstant +pixelformat-yv12+ sdl2-ffi:+sdl-pixelformat-yv12+)
(defconstant +pixelformat-iyuv+ sdl2-ffi:+sdl-pixelformat-iyuv+)
(defconstant +pixelformat-yuy2+ sdl2-ffi:+sdl-pixelformat-yuy2+)
(defconstant +pixelformat-uyvy+ sdl2-ffi:+sdl-pixelformat-uyvy+)
(defconstant +pixelformat-yvyu+ sdl2-ffi:+sdl-pixelformat-yvyu+)
(defconstant +pixelformat-nv12+ sdl2-ffi:+sdl-pixelformat-unknown+ #+never sdl2-ffi:+sdl-pixelformat-nv12+)
(defconstant +pixelformat-anv21+ sdl2-ffi:+sdl-pixelformat-unknown+ #+never sdl2-ffi:+sdl-pixelformat-nv21+)

;;; pixel types
(defconstant +pixeltype-unknown+ sdl2-ffi:+sdl-pixeltype-unknown+)
(defconstant +pixeltype-index1+ sdl2-ffi:+sdl-pixeltype-index1+)
(defconstant +pixeltype-index4+ sdl2-ffi:+sdl-pixeltype-index4+)
(defconstant +pixeltype-index8+ sdl2-ffi:+sdl-pixeltype-index8+)
(defconstant +pixeltype-packed8+ sdl2-ffi:+sdl-pixeltype-packed8+)
(defconstant +pixeltype-packed16+ sdl2-ffi:+sdl-pixeltype-packed16+)
(defconstant +pixeltype-packed32+ sdl2-ffi:+sdl-pixeltype-packed32+)
(defconstant +pixeltype-arrayu8+ sdl2-ffi:+sdl-pixeltype-arrayu8+)
(defconstant +pixeltype-arrayu16+ sdl2-ffi:+sdl-pixeltype-arrayu16+)
(defconstant +pixeltype-arrayu32+ sdl2-ffi:+sdl-pixeltype-arrayu32+)
(defconstant +pixeltype-arrayf16+ sdl2-ffi:+sdl-pixeltype-arrayf16+)
(defconstant +pixeltype-arrayf32+ sdl2-ffi:+sdl-pixeltype-arrayf32+)

;;; pixel type orderings
(defconstant +bitmaporder-none+ sdl2-ffi:+sdl-bitmaporder-none+)
(defconstant +bitmaporder-4321+ sdl2-ffi:+sdl-bitmaporder-4321+)
(defconstant +bitmaporder-1234+ sdl2-ffi:+sdl-bitmaporder-1234+)
(defconstant +packedorder-none+ sdl2-ffi:+sdl-packedorder-none+)
(defconstant +packedorder-xrgb+ sdl2-ffi:+sdl-packedorder-xrgb+)
(defconstant +packedorder-rgbx+ sdl2-ffi:+sdl-packedorder-rgbx+)
(defconstant +packedorder-argb+ sdl2-ffi:+sdl-packedorder-argb+)
(defconstant +packedorder-rgba+ sdl2-ffi:+sdl-packedorder-rgba+)
(defconstant +packedorder-xbgr+ sdl2-ffi:+sdl-packedorder-xbgr+)
(defconstant +packedorder-bgrx+ sdl2-ffi:+sdl-packedorder-bgrx+)
(defconstant +packedorder-abgr+ sdl2-ffi:+sdl-packedorder-abgr+)
(defconstant +packedorder-bgra+ sdl2-ffi:+sdl-packedorder-bgra+)
(defconstant +arrayorder-none+ sdl2-ffi:+sdl-arrayorder-none+)
(defconstant +arrayorder-rgb+ sdl2-ffi:+sdl-arrayorder-rgb+)
(defconstant +arrayorder-rgba+ sdl2-ffi:+sdl-arrayorder-rgba+)
(defconstant +arrayorder-argb+ sdl2-ffi:+sdl-arrayorder-argb+)
(defconstant +arrayorder-bgr+ sdl2-ffi:+sdl-arrayorder-bgr+)
(defconstant +arrayorder-bgra+ sdl2-ffi:+sdl-arrayorder-bgra+)
(defconstant +arrayorder-abgr+ sdl2-ffi:+sdl-arrayorder-abgr+)

;;; pixel format layouts
(defconstant +packedlayout-none+ sdl2-ffi:+sdl-packedlayout-none+)
(defconstant +packedlayout-332+ sdl2-ffi:+sdl-packedlayout-332+)
(defconstant +packedlayout-4444+ sdl2-ffi:+sdl-packedlayout-4444+)
(defconstant +packedlayout-1555+ sdl2-ffi:+sdl-packedlayout-1555+)
(defconstant +packedlayout-5551+ sdl2-ffi:+sdl-packedlayout-5551+)
(defconstant +packedlayout-565+ sdl2-ffi:+sdl-packedlayout-565+)
(defconstant +packedlayout-8888+ sdl2-ffi:+sdl-packedlayout-8888+)
(defconstant +packedlayout-2101010+ sdl2-ffi:+sdl-packedlayout-2101010+)
(defconstant +packedlayout-1010102+ sdl2-ffi:+sdl-packedlayout-1010102+)
