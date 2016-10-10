cask 'android-studio-canary' do
  version '2.2.1.0,145.3330264'
  sha256 '50f39bc08cdc3ce425828f7c50175dfe71e9d4cd07bcd44fde68107b3f694416'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version.before_comma}/android-studio-ide-#{version.after_comma}-mac.zip"
  name 'Android Studio Canary'
  homepage 'https://sites.google.com/a/android.com/tools/download/studio/canary'

  app 'Android Studio.app'

  zap delete: [
                "~/Library/Preferences/AndroidStudio#{version.major_minor}",
                '~/Library/Preferences/com.google.android.studio.plist',
                "~/Library/Application Support/AndroidStudio#{version.major_minor}",
                "~/Library/Logs/AndroidStudio#{version.major_minor}",
                "~/Library/Caches/AndroidStudio#{version.major_minor}",
              ],
      rmdir:  '~/AndroidStudioProjects'

  caveats do
    depends_on_java
  end
end
