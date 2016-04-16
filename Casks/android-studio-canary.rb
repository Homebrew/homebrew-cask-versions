cask 'android-studio-canary' do
  version '2.1.0.6,143.2765781'
  sha256 'dddffb0ba11a1cf9c3f3977a0118e1b9aa9736d41b6ce700915f9dc03fe6c7f8'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version.before_comma}/android-studio-ide-#{version.after_comma}-mac.zip"
  name 'Android Studio Canary'
  homepage 'https://sites.google.com/a/android.com/tools/download/studio/canary'
  license :apache

  app 'Android Studio.app'

  zap delete: [
                "~/Library/Preferences/AndroidStudioPreview#{version.major_minor}",
                '~/Library/Preferences/com.google.android.studio.plist',
                "~/Library/Application Support/AndroidStudioPreview#{version.major_minor}",
                "~/Library/Logs/AndroidStudioPreview#{version.major_minor}",
                "~/Library/Caches/AndroidStudioPreview#{version.major_minor}",
              ],
      rmdir:  '~/AndroidStudioProjects'

  caveats do
    depends_on_java
  end
end
