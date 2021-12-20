#
#  Be sure to run `pod spec lint EasyPermissionX.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = 'EasyPermissionX'
  s.version      = '0.0.1'
  s.summary      = 'A short description of EasyPermissionX.'

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  # s.description  = <<-DESC
  #                  DESC

  s.homepage     = 'http://EXAMPLE/EasyPermissionX'
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  #spec.license      = "MIT (example)"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { 'arcticfox' => 'flutterdev@88.com' }
  # Or just: spec.author    = 'arcticfox-mac'
  # spec.authors            = { "arcticfox-mac" => "arcticfox1919@163.com" }
  # spec.social_media_url   = "https://twitter.com/arcticfox-mac"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # spec.platform     = :ios
  # spec.platform     = :ios, "5.0"
  s.platform     = :ios, '8.0'
  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => 'http://EXAMPLE/EasyPermissionX.git', :tag => "#{s.version}" }
  s.requires_arc = true
  s.default_subspec = 'All'

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  # spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  # spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

  s.subspec 'All' do |all|
    all.source_files = 'permissions/*.{h,m}'
  end

  s.subspec 'Base' do |base|
      base.source_files = 'permissions/EasyPermissionSetting.{h,m}','permissions/EasyPermission.{h,m}'
  end

  s.subspec 'Camera' do |camera|
      camera.source_files = 'permissions/EasyPermissionCamera.{h,m}'
  end

  s.subspec 'Photo' do |photo|
      photo.source_files = 'permissions/EasyPermissionPhotos.{h,m}'
  end

  s.subspec 'Contact' do |contact|
      contact.source_files = 'permissions/EasyPermissionContacts.{h,m}'
  end

  s.subspec 'Location' do |location|
      location.source_files = 'permissions/EasyPermissionLocation.{h,m}'
  end

  s.subspec 'Reminder' do |reminder|
      reminder.source_files = 'permissions/EasyPermissionReminders.{h,m}'
  end

  s.subspec 'Calendar' do |calendar|
      calendar.source_files = 'permissions/EasyPermissionCalendar.{h,m}'
  end

  s.subspec 'Microphone' do |microphone|
      microphone.source_files = 'permissions/EasyPermissionMicrophone.{h,m}'
  end

  s.subspec 'Health' do |health|
      health.source_files = 'permissions/EasyPermissionHealth.{h,m}'
  end

  s.subspec 'Net' do |net|
      net.source_files = 'permissions/EasyPermissionNet.{h,m}','permissions/NetReachability.{h,m}','permissions/EasyPermissionData.{h,m}'
  end

  s.subspec 'Tracking' do |tracking|
      tracking.source_files = 'permissions/EasyPermissionTracking.{h,m}'
  end

  s.subspec 'Media' do |media|
    media.source_files = 'permissions/EasyPermissionMediaLibrary.{h,m}'
  end

  s.subspec 'Notification' do |notification|
      notification.source_files = 'permissions/EasyPermissionNotification.{h,m}'
  end
  s.subspec 'Bluetooth' do |bluetooth|
      bluetooth.source_files = 'permissions/EasyPermissionBluetooth.{h,m}'
  end
end
