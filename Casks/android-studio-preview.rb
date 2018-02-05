cask 'android-studio-preview' do
  version '3.2.0.0,173.4572754'
  sha256 'cec7245e50487e577cc4369cf23142f2dcf8555e27d62758175e281af1541dbf'

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
