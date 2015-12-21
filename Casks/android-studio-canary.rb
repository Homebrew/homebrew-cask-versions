cask 'android-studio-canary' do
  version '2.0.0.4-143.2489090'
  sha256 '274f80c964ad21d17dfd75105f35249e64dd9a4e178a75e7bb6974ed430fa468'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version.sub(%r{-.*},'')}/android-studio-ide-#{version.sub(%r{.*?-},'')}-mac.zip"
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
