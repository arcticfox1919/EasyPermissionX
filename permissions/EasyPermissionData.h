
#import <Foundation/Foundation.h>

///data networks permission
@interface EasyPermissionData : NSObject

/**
 判断网络权限是否有限制
 remark: just call back data networks permission
 @param completion 回调
 */
+ (void)authorizeWithCompletion:(void(^)(BOOL granted,BOOL firstTime))completion;

@end
