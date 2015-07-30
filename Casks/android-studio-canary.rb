cask :v1 => 'android-studio-canary' do
  version '1.3.0.10'
  sha256 '309e9c085b03a790def41aaf8ee6ad7026fb14bd88a9924a90fddeadf1a65e88'

  url "http://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.2117773-mac.zip"
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
