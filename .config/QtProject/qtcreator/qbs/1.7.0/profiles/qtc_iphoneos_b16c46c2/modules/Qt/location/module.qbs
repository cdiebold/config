import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Location"
    Depends { name: "Qt"; submodules: ["core", "positioning", "gui", "quick"]}

    hasLibrary: true
    staticLibsDebug: ["z", "m", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5PlatformSupport_debug.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Positioning_debug.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Quick_debug.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Gui_debug.a", "qtpng_debug", "qtharfbuzzng_debug", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Qml_debug.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Network_debug.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Core_debug.a", "z", "qtpcre_debug", "m"]
    staticLibsRelease: ["z", "m", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5PlatformSupport.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Positioning.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Quick.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Gui.a", "qtpng", "qtharfbuzzng", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Qml.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Network.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Core.a", "z", "qtpcre", "m"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: ["-force_load", "/Users/chris/Developer/Qt/5.7/ios/plugins/platforms/libqios_debug.a"]
    linkerFlagsRelease: ["-force_load", "/Users/chris/Developer/Qt/5.7/ios/plugins/platforms/libqios.a"]
    frameworksDebug: ["MobileCoreServices", "Foundation", "UIKit", "CoreFoundation", "Security", "SystemConfiguration", "CoreText", "CoreGraphics", "OpenGLES", "OpenGLES"]
    frameworksRelease: ["MobileCoreServices", "Foundation", "UIKit", "CoreFoundation", "Security", "SystemConfiguration", "CoreText", "CoreGraphics", "OpenGLES", "OpenGLES"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Location_debug"
    libNameForLinkerRelease: "Qt5Location"
    libFilePathDebug: "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Location_debug.a"
    libFilePathRelease: "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Location.a"
    cpp.defines: ["QT_LOCATION_LIB"]
    cpp.includePaths: ["/Users/chris/Developer/Qt/5.7/ios/include", "/Users/chris/Developer/Qt/5.7/ios/include/QtLocation"]
    cpp.libraryPaths: ["/Users/chris/Developer/Qt/5.7/ios/lib", "/Users/chris/Developer/Qt/5.7/ios/lib", "/Users/chris/Developer/Qt/5.7/ios/lib", "/Users/chris/Developer/Qt/5.7/ios/lib"]
    isStaticLibrary: true
}
