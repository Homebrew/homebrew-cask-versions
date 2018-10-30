cask 'android-studio-preview' do
  version '3.4.0.0,182.5070326'
  sha256 '1263be20c1ed0254cd20f94d750a4cb624b5923fda52f120fd9b2924ac662ce9'

  # google.com/dl/android/studio was verified as official when first introduced to the cask
  url "https://dl.google.com/dl/android/studio/ide-zips/#{version.before_comma}/android-studio-ide-#{version.after_comma}-mac.zip"
  name 'Android Studio Preview'
  homepage 'https://developer.android.com/studio/preview/'

  app "Android Studio #{version.major_minor} Preview.app"

  zap trash: [
               "~/Library/Application Support/AndroidStudioPreview#{version.major_minor}",
               "~/Library/Caches/AndroidStudioPreview#{version.major_minor}",
               "~/Library/Logs/AndroidStudioPreview#{version.major_minor}",
               "~/Library/Preferences/AndroidStudioPreview#{version.major_minor}",
               '~/Library/Preferences/com.google.android.studio.plist',
             ],
      rmdir: '~/AndroidStudioProjects'

  caveats do
    depends_on_java
  end
end
