cask :v1 => 'android-studio-canary' do
  version '1.4.0.8'
  sha256 'c1b5282489290a79089f62541b7d6079f31e63572e854b6624aa3243d7181f53'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-ide-141.2272828-mac.zip"
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
