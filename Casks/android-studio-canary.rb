cask 'android-studio-canary' do
  version '3.0.0.17,171.4402976'
  sha256 'b96a13a25562c44a3b213c25afa0c64eab888e653f71b16b1edf940efecabfdf'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version.before_comma}/android-studio-ide-#{version.after_comma}-mac.zip"
  name 'Android Studio Canary'
  homepage 'https://developer.android.com/studio/preview/'

  conflicts_with cask: 'android-studio'

  app 'Android Studio.app'

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
