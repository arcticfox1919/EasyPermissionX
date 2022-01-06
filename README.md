# EasyPermissionX

Open the `Podfile` file,You can integrate the following libraries:

```ruby
pod 'EasyPermissionX/Camera'
pod 'EasyPermissionX/Photo'
pod 'EasyPermissionX/Contact'
pod 'EasyPermissionX/Location'
pod 'EasyPermissionX/Reminder'
pod 'EasyPermissionX/Calendar'
pod 'EasyPermissionX/Microphone'
pod 'EasyPermissionX/Health'
pod 'EasyPermissionX/Net'
pod 'EasyPermissionX/Tracking'
pod 'EasyPermissionX/Media'
pod 'EasyPermissionX/Notification'
pod 'EasyPermissionX/Bluetooth'
```



```objc
//相机权限请求
[EasyPermission authorizeWithType:EasyPermissionType_Camera completion:^(BOOL granted, BOOL firstTime) {

    if (granted) {
        //TODO
    }else if (!firstTime){
        //不是第一次请求权限，弹出权限提示，用户选择设置，即跳转设置界面
         [EasyPermissionSetting showAlertToDislayPrivacySettingWithTitle:@"提示" msg:@"没有相机权限，是否前往设置" cancel:@"取消" setting:@"设置"];
    }
}];


//定位
[EasyPermission authorizeWithType:EasyPermissionType_Location completion:^(BOOL granted, BOOL firstTime) {

    if (granted) {
        //TODO
    }else if (!firstTime){
        [EasyPermissionSetting showAlertToDislayPrivacySettingWithTitle:@"提示" msg:@"没有定位权限，是否前往设置" cancel:@"取消" setting:@"设置"];
    }
}];
```
