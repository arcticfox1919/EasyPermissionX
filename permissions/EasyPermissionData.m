#import "EasyPermissionData.h"
#import <CoreTelephony/CTCellularData.h>

@interface EasyPermissionData()

@property (nonatomic, strong) id cellularData;
@property (nonatomic, copy) void (^completion)(BOOL granted,BOOL firstTime);
@end

@implementation EasyPermissionData

+ (instancetype)sharedManager
{
    static EasyPermissionData* _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[EasyPermissionData alloc] init];
        
    });
    
    return _sharedInstance;
}


+ (void)authorizeWithCompletion:(void(^)(BOOL granted,BOOL firstTime))completion
{
    if (@available(iOS 10,*)) {
        
        [EasyPermissionData sharedManager].completion = completion;
        
        if (![EasyPermissionData sharedManager].cellularData) {
            
            CTCellularData *cellularData = [[CTCellularData alloc] init];
            
            cellularData.cellularDataRestrictionDidUpdateNotifier = ^(CTCellularDataRestrictedState state)
            {
                dispatch_async(dispatch_get_main_queue(), ^{
                    if (state == kCTCellularDataNotRestricted) {
                        //没有限制
                        [EasyPermissionData sharedManager].completion(YES,NO);
                        NSLog(@"有网络权限");
                    }
                    else if (state == kCTCellularDataRestrictedStateUnknown)
                    {
                        //                    completion(NO,NO);
                        NSLog(@"没有请求网络或正在等待用户确认权限?");
                    }
                    else{
                        //
                        [EasyPermissionData sharedManager].completion(NO,NO);
                        NSLog(@"无网络权限");
                    }
                });
            };
            
            //不存储，对象cellularData会销毁
            [EasyPermissionData sharedManager].cellularData = cellularData;
        }
    }
    else
    {
        completion(YES,NO);
    }

}

@end
