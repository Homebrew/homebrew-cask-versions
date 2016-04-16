cask 'android-studio-canary' do
  version '2.1.0.5,143.2759333'
  sha256 '8a76eb901646d340b4edf2fb0b0475d457a2b30ef019fa4b5c2f5891695d47ea'

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
