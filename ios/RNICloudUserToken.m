//
//  RNICloudUserToken.m
//
//  Created by joshuakarjala on 01/12/15
//  Extended by mikaeladlers
//

#import <React/RCTBridge.h>
#import <React/RCTEventDispatcher.h>

@import CloudKit;

@interface RNICloudUserToken : NSObject <RCTBridgeModule>
//@property (nonatomic, retain) NSMetadataQuery *query;

@end

@implementation RNICloudUserToken


RCT_EXPORT_MODULE(RNICloudUserToken);

/*
 let iCloud = React.NativeModules.ICloudUserToken;
 iCloud.getToken((err, token)=>{});
 or
 iCloud.getTokenFromSuite('iCloud.com.some.container', (err, token)=>{});
 */

RCT_EXPORT_METHOD(getToken:(RCTResponseSenderBlock)callback){
  CKContainer *container = [CKContainer defaultContainer];
  [container fetchUserRecordIDWithCompletionHandler:^(CKRecordID * _Nullable recordID, NSError * _Nullable error) {
    if(recordID == nil) return callback(@[[[error userInfo] description]]);
    callback(@[@NO, [recordID recordName]]);
  }];
}

RCT_EXPORT_METHOD(getTokenFromSuite:(NSString *)suite callback:(RCTResponseSenderBlock)callback){
  CKContainer *container;
  if (suite.length == 0){
    container = [CKContainer defaultContainer];
  }
  else {
    container =[CKContainer containerWithIdentifier:suite];
  }
  
  [container fetchUserRecordIDWithCompletionHandler:^(CKRecordID * _Nullable recordID, NSError * _Nullable error) {
    if(recordID == nil) return callback(@[[[error userInfo] description]]);
    callback(@[@NO, [recordID recordName]]);
  }];
}

@end
