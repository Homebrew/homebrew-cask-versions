cask 'android-studio-canary' do
  version '2.0.0.15-143.2637817'
  sha256 'f06be886c30fe48c585108df7d23e8c33deb901fe4c7da2c0bf1ad434d6ba40e'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version.sub(%r{-.*}, '')}/android-studio-ide-#{version.sub(%r{.*?-}, '')}-mac.zip"
  name 'Android Studio Canary'
  homepage 'https://sites.google.com/a/android.com/tools/download/studio/canary'
  license :apache

  app 'Android Studio.app'

  zap delete: [
                '~/Library/Preferences/AndroidStudio*',
                '~/Library/Preferences/com.google.android.studio.plist',
                '~/Library/Application Support/AndroidStudio*',
                '~/Library/Logs/AndroidStudio*',
                '~/Library/Caches/AndroidStudio*',
              ],
      rmdir:  '~/AndroidStudioProjects'

  caveats do
    depends_on_java
  end
end
