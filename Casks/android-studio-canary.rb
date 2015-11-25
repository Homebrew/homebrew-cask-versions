cask :v1 => 'android-studio-canary' do
  version '2.0.0.0'
  sha256 '61aea6fe29dfd65af2b8dc3a010ca8bbc7db2b881b2a62ee3d4600e67fd96a41'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-143.2443734-mac.zip"
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
