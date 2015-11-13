cask :v1 => 'android-studio-canary' do
  version '1.5.0.3'
  sha256 'cfc666dcf7c7df67e0a0f5e1a6179e12e28c9763a126ae0a7416911dbe47ee4f'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.2415497-mac.zip"
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
