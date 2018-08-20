cask 'android-studio-preview' do
  version '3.3.0.5,182.4954005'
  sha256 'acf95e2c4200bcd98ad10d1d05eab3b0959f9391262c65546065eca9946a344b'

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
