cask 'android-studio-preview' do
  version '3.1.0.1,171.4429293'
  sha256 '0fd184698f49c0ee275b13470d53f051ce2b91dc8a7516e915517694e88f3ba0'

  # google.com/dl/android/studio was verified as official when first introduced to the cask
  url "https://dl.google.com/dl/android/studio/ide-zips/#{version.before_comma}/android-studio-ide-#{version.after_comma}-mac.zip"
  name 'Android Studio Preview'
  homepage 'https://developer.android.com/studio/preview/'

  app "Android Studio #{version.major_minor} Preview.app"

  zap delete: [
                "~/Library/Application Support/AndroidStudioPreview#{version.major_minor}",
                "~/Library/Caches/AndroidStudioPreview#{version.major_minor}",
                "~/Library/Logs/AndroidStudioPreview#{version.major_minor}",
                "~/Library/Preferences/AndroidStudioPreview#{version.major_minor}",
                '~/Library/Preferences/com.google.android.studio.plist',
              ],
      rmdir:  '~/AndroidStudioProjects'

  caveats do
    depends_on_java
  end
end
