
#if __has_include("RCTBridgeModule.h")
 #import "RCTBridgeModule.h"
 #import "RCTEventDispatcher.h"
#else
 #import <React/RCTBridgeModule.h>
 #import <React/RCTEventDispatcher.h>
#endif

@interface RNICloudUserToken : NSObject <RCTBridgeModule>

@end
  