#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


API_AVAILABLE(ios(8.0)) 
@interface EasyPermissionSetting : NSObject

#pragma mark- guide user to show App privacy setting
/**
 show App privacy settings
 */
+ (void)displayAppPrivacySettings;



/**
 show dialog to guide user to show App privacy setting
 
 @param title title
 @param message privacy message
 @param cancel cancel button text
 @param setting setting button text,if user tap this button ,will show App privacy setting
 */
+ (void)showAlertToDislayPrivacySettingWithTitle:(NSString*)title
                                             msg:(NSString*)message
                                          cancel:(NSString*)cancel
                                         setting:(NSString*)setting;


/**
 show dialog to guide user to show App privacy setting
 
 @param title title
 @param message privacy message
 @param cancel cancel button text
 @param setting setting button text,if user tap this button ,will show App privacy setting
 @param completion user has been choosed
 */
+ (void)showAlertToDislayPrivacySettingWithTitle:(NSString*)title
                                             msg:(NSString*)message
                                          cancel:(NSString*)cancel
                                         setting:(NSString*)setting
                                      completion:(void(^)(void))completion;



/// only show tip alert
/// @param title title
/// @param message message
/// @param ok button title
+ (void)showAlertWithTitle:(NSString*)title
                       msg:(NSString*)message
                        ok:(NSString*)ok;

@end
