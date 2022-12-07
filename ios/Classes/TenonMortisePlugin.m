#import "TenonMortisePlugin.h"
#if __has_include(<tenon_mortise/tenon_mortise-Swift.h>)
#import <tenon_mortise/tenon_mortise-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "tenon_mortise-Swift.h"
#endif

@implementation TenonMortisePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTenonMortisePlugin registerWithRegistrar:registrar];
}
@end
