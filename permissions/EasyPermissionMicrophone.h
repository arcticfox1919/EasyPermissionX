#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface EasyPermissionMicrophone : NSObject

+ (BOOL)authorized;

/**
 permission status
 
 0 ´╝ÜAVAudioSessionRecordPermissionUndetermined
 1 ´╝ÜAVAudioSessionRecordPermissionDenied
 2 ´╝ÜAVAudioSessionRecordPermissionGranted
 
 @return status
 */
+ (NSInteger)authorizationStatus;

+ (void)authorizeWithCompletion:(void(^)(BOOL granted,BOOL firstTime))completion;

@end
