cask :v1 => 'android-studio-canary' do
  version '1.5.0.0'
  sha256 '7fe3bd0c2f5ef2f9cf8ccef039b3d4df840200736c4f8613bc192530ac98e3ec'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.2314126-mac.zip"
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
