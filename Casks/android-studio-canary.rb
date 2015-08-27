cask :v1 => 'android-studio-canary' do
  version '1.4.0.2'
  sha256 '56a4a1cd0a2e6cfa76591f2b6aa9d1ac74bfdd6605cf12bd9f6531c20bca8c4d'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.2180789-mac.zip"
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
