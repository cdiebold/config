import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DExtras"
    Depends { name: "Qt"; submodules: ["core", "gui", "3dcore", "3drender", "3dinput", "3dlogic"]}

    hasLibrary: true
    staticLibsDebug: ["z", "m", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5PlatformSupport_debug.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt53DRender_debug.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5OpenGLExtensions_debug.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt53DInput_debug.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt53DLogic_debug.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt53DCore_debug.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Gamepad_debug.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Gui_debug.a", "qtpng_debug", "qtharfbuzzng_debug", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Network_debug.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Concurrent_debug.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Core_debug.a", "z", "qtpcre_debug", "m"]
    staticLibsRelease: ["z", "m", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5PlatformSupport.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt53DRender.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5OpenGLExtensions.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt53DInput.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt53DLogic.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt53DCore.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Gamepad.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Gui.a", "qtpng", "qtharfbuzzng", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Network.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Concurrent.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Core.a", "z", "qtpcre", "m"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: ["-force_load", "/Users/chris/Developer/Qt/5.7/ios/plugins/platforms/libqios_debug.a"]
    linkerFlagsRelease: ["-force_load", "/Users/chris/Developer/Qt/5.7/ios/plugins/platforms/libqios.a"]
    frameworksDebug: ["MobileCoreServices", "Foundation", "UIKit", "CoreFoundation", "CoreText", "CoreGraphics", "OpenGLES", "Security", "SystemConfiguration", "OpenGLES"]
    frameworksRelease: ["MobileCoreServices", "Foundation", "UIKit", "CoreFoundation", "CoreText", "CoreGraphics", "OpenGLES", "Security", "SystemConfiguration", "OpenGLES"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt53DExtras_debug"
    libNameForLinkerRelease: "Qt53DExtras"
    libFilePathDebug: "/Users/chris/Developer/Qt/5.7/ios/lib/libQt53DExtras_debug.a"
    libFilePathRelease: "/Users/chris/Developer/Qt/5.7/ios/lib/libQt53DExtras.a"
    cpp.defines: ["QT_3DEXTRAS_LIB"]
    cpp.includePaths: ["/Users/chris/Developer/Qt/5.7/ios/include", "/Users/chris/Developer/Qt/5.7/ios/include/Qt3DExtras"]
    cpp.libraryPaths: ["/Users/chris/Developer/Qt/5.7/ios/lib", "/Users/chris/Developer/Qt/5.7/ios/lib", "/Users/chris/Developer/Qt/5.7/ios/lib", "/Users/chris/Developer/Qt/5.7/ios/lib"]
    isStaticLibrary: true
}
