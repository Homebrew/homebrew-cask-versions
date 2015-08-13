cask :v1 => 'android-studio-canary' do
  version '1.3.1.0'
  sha256 '967f1750fc9cb86080c9761439421269b7a57864ab6a429f9c82ba9cafdc1e2a'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.2135290-mac.zip"
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
