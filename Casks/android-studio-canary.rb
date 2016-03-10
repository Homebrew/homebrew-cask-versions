cask 'android-studio-canary' do
  version '2.1.0.0-143.2664576'
  sha256 '0d6661c414beb41a670f439b663ae06b78847d9c728ca14d5ce0efaf21cf5a74'

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
