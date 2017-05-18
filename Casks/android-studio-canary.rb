cask 'android-studio-canary' do
  version '3.0.0.0,171.4010489'
  sha256 '863849c56ea4ac1d788e8a5c30cb7bf88b80f552fcc72c4cef24c016e148a3b8'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version.before_comma}/android-studio-ide-#{version.after_comma}-mac.zip"
  name 'Android Studio Canary'
  homepage 'https://sites.google.com/a/android.com/tools/download/studio/canary'

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
