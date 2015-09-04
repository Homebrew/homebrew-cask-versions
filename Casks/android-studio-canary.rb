cask :v1 => 'android-studio-canary' do
  version '1.4.0.4'
  sha256 '02bb368d45e9030d54fdd4f5e9e498427a79631ff83aa21071c9ef1d04310f58'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.2218876-mac.zip"
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
