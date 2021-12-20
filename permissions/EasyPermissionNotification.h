#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EasyPermissionNotification : NSObject


+ (BOOL)authorized;

/**
 access authorizationStatus
 0: NotDetermined
 1: denied
 2: authorized
 3: 不影响用户操作的通知
 4: clips：临时允许
 */
+ (NSInteger)authorizationStatus;

+ (void)authorizeWithCompletion:(void(^)(BOOL granted,BOOL firstTime))completion;

@end

NS_ASSUME_NONNULL_END
