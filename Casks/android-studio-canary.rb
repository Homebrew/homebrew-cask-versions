cask :v1 => 'android-studio-canary' do
  version '1.4.0.6'
  sha256 '999ad174212a255f9bab37fbe2200e6f91736b0bf440c7751bf316018b8c2a15'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.2248056-mac.zip"
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
