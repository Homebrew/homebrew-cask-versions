cask :v1 => 'android-studio-canary' do
  version '1.4.0.5'
  sha256 '68fa2cd4bf24261e414d9bd4bed3cf66d0b3c415dba135115c2ed6dfd34dc10c'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.2240497-mac.zip"
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
