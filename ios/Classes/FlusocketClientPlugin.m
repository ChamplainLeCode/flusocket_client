#import "FlusocketClientPlugin.h"
#if __has_include(<flusocket_client/flusocket_client-Swift.h>)
#import <flusocket_client/flusocket_client-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flusocket_client-Swift.h"
#endif

@implementation FlusocketClientPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlusocketClientPlugin registerWithRegistrar:registrar];
}
@end
