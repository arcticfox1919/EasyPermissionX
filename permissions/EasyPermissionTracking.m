#import "EasyPermissionTracking.h"
#import <AdSupport/AdSupport.h>



@implementation EasyPermissionTracking

+ (BOOL)authorized
{
    if (@available(iOS 14.0, *)) {
        
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_14_0
        ATTrackingManagerAuthorizationStatus status = [ATTrackingManager trackingAuthorizationStatus];
        return status == ATTrackingManagerAuthorizationStatusAuthorized;
#endif
    }
    else{
        
        if ([[ASIdentifierManager sharedManager] isAdvertisingTrackingEnabled]) {
            return YES;
        }
    }
    return NO;
}

#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_14_0
+ (ATTrackingManagerAuthorizationStatus)authorizationStatus
{
    return [ATTrackingManager trackingAuthorizationStatus];
}
#endif

+ (void)authorizeWithCompletion:(void(^)(BOOL granted,BOOL firstTime))completion
{
    
    if (@available(iOS 14.0, *)) {
        
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_14_0

        ATTrackingManagerAuthorizationStatus status = [ATTrackingManager trackingAuthorizationStatus];
        
        switch (status) {
            case ATTrackingManagerAuthorizationStatusNotDetermined:
            {
                // 未提示用户
                [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status) {
                    dispatch_async(dispatch_get_main_queue(), ^{
                        if (status == ATTrackingManagerAuthorizationStatusAuthorized) {
                            completion(YES,YES);
//                            NSString *idfa = [[ASIdentifierManager sharedManager].advertisingIdentifier UUIDString];
                        }
                        else {
                            completion(NO,YES);
    
                        }
                    });
                }];
            }
                break;
            case ATTrackingManagerAuthorizationStatusRestricted:
            case ATTrackingManagerAuthorizationStatusDenied:
            {
                completion(NO,NO);
            }
                break;
            case ATTrackingManagerAuthorizationStatusAuthorized:
            {
                completion(YES,NO);
            }
                
            default:
                break;
        }
#endif
    }
    else {
        //iOS 14以下请求idfa权限
        // 判断在设置-隐私里用户是否打开了广告跟踪
        if ([[ASIdentifierManager sharedManager] isAdvertisingTrackingEnabled]) {
           
            completion(YES,NO);
            
//            NSString *idfa = [[ASIdentifierManager sharedManager].advertisingIdentifier UUIDString];
//            NSLog(@"%@",idfa);
            
        } else {
//            NSLog(@"请在设置-隐私-广告中打开广告跟踪功能");
            completion(NO,NO);
        }
    }
}


@end
