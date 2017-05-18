import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "CLucene"
    Depends { name: "Qt"; submodules: ["core"]}

    hasLibrary: true
    staticLibsDebug: ["z", "m", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5PlatformSupport_debug.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Core_debug.a", "z", "qtpcre_debug", "m"]
    staticLibsRelease: ["z", "m", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5PlatformSupport.a", "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5Core.a", "z", "qtpcre", "m"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: ["-force_load", "/Users/chris/Developer/Qt/5.7/ios/plugins/platforms/libqios_debug.a"]
    linkerFlagsRelease: ["-force_load", "/Users/chris/Developer/Qt/5.7/ios/plugins/platforms/libqios.a"]
    frameworksDebug: ["MobileCoreServices", "Foundation", "UIKit", "CoreFoundation"]
    frameworksRelease: ["MobileCoreServices", "Foundation", "UIKit", "CoreFoundation"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5CLucene_debug"
    libNameForLinkerRelease: "Qt5CLucene"
    libFilePathDebug: "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5CLucene_debug.a"
    libFilePathRelease: "/Users/chris/Developer/Qt/5.7/ios/lib/libQt5CLucene.a"
    cpp.defines: ["QT_CLUCENE_LIB"]
    cpp.includePaths: ["/Users/chris/Developer/Qt/5.7/ios/include", "/Users/chris/Developer/Qt/5.7/ios/include/QtCLucene", "/Users/chris/Developer/Qt/5.7/ios/include/QtCLucene/5.7.1", "/Users/chris/Developer/Qt/5.7/ios/include/QtCLucene/5.7.1/QtCLucene"]
    cpp.libraryPaths: ["/Users/chris/Developer/Qt/5.7/ios/lib", "/Users/chris/Developer/Qt/5.7/ios/lib"]
    isStaticLibrary: true
}
