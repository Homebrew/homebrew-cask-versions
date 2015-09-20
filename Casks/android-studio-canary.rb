cask :v1 => 'android-studio-canary' do
  version '1.4.0.7'
  sha256 '58d2f41d680e465408bdade6b81b0de5f3bf7b59a559dd6bc573f619ef3b0e67'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.2262011-mac.zip"
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
