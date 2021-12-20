
#import <Foundation/Foundation.h>
#import <EventKit/EventKit.h>

@interface EasyPermissionCalendar : NSObject

+ (BOOL)authorized;

+ (EKAuthorizationStatus)authorizationStatus;

+ (void)authorizeWithCompletion:(void(^)(BOOL granted,BOOL firstTime))completion;

@end
