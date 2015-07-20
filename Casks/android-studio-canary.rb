cask :v1 => 'android-studio-canary' do
  version '1.3.0.8'
  sha256 'cc06d31f71a4bbc94e3027846f8293ffe898c77d55eccb3dee1fb073cd1e3d1c'

  url "http://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.2095413-mac.zip"
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
