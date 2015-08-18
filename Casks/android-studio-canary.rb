cask :v1 => 'android-studio-canary' do
  version '1.4.0.1'
  sha256 'd0be3dc3e6336ef6f63452c58bb53fbc65784558f3536bc8614c308cd6613b3f'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.2168647-mac.zip"
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
