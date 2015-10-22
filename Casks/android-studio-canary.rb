cask :v1 => 'android-studio-canary' do
  version '1.5.0.1'
  sha256 'f20846d312b56c7abfc80ed79a1425a9b045bf2c8de9df9a5fccb4e28a1dcdb3'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.2343905-mac.zip"
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
