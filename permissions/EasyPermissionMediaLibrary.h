#import <Foundation/Foundation.h>

@interface EasyPermissionMediaLibrary : NSObject

+ (BOOL)authorized;

/**
 MediaLibrary permission status
 
 @reture
 0: NotDetermined = 0,
 1: Denied,
 2: Restricted,
 3: Authorized,
 */
+ (NSInteger)authorizationStatus;

+ (void)authorizeWithCompletion:(void(^)(BOOL granted, BOOL firstTime))complection;

@end


