cask :v1 => 'android-studio-canary' do
  version '1.4.0.9'
  sha256 '332487bd58b93d8fae24baab88b1927d32b6b7b5932337ca54f73a2db657e7b9'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.2279206-mac.zip"
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
