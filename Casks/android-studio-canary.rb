cask :v1 => 'android-studio-canary' do
  version '1.4.0.10'
  sha256 'a97d00384a4e2b045e793203f1407cba3ea37fa08bbffdbef8fbd1a8a2b27da0'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.2288178-mac.zip"
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
