cask 'android-studio-canary' do
  version '2.0.0.1-143.2461418'
  sha256 '606fdfdf9c8a16cbaecf223afff8b3a8e247e949b75e7e6ede695d77b34e2fb6'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version.sub(%r{-.*},'')}/android-studio-ide-#{version.sub(%r{.*?-},'')}-mac.zip"
  name 'Android Studio Canary'
  homepage 'https://sites.google.com/a/android.com/tools/download/studio/canary'
  license :apache

  app 'Android Studio.app'

  caveats <<-EOS.undent
    #{token} requires Java. You can install the latest version with
    brew cask install java
  EOS
  
  zap :delete => [
    '~/Library/Preferences/AndroidStudio*',
    '~/Library/Preferences/com.google.android.studio.plist',
    '~/Library/Application Support/AndroidStudio*',
    '~/Library/Logs/AndroidStudio*',
    '~/Library/Caches/AndroidStudio*',
  ],
  :rmdir => '~/AndroidStudioProjects'
end
