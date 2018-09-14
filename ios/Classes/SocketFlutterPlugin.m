#import "SocketFlutterPlugin.h"
#import <socket_flutter_plugin/socket_flutter_plugin-Swift.h>

@implementation SocketFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSocketFlutterPlugin registerWithRegistrar:registrar];
}
@end
