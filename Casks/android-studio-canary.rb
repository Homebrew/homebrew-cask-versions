cask 'android-studio-canary' do
  version '2.0.0.5-143.2532994'
  sha256 '9d86b86a902fc756ecdc600f39a5b847fc119d7af80303f6f30d65974ae6bd07'

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version.sub(%r{-.*},'')}/android-studio-ide-#{version.sub(%r{.*?-},'')}-mac.zip"
  name 'Android Studio Canary'
  homepage 'https://sites.google.com/a/android.com/tools/download/studio/canary'
  license :apache

  app 'Android Studio.app'
  
  zap :delete => [
                   '~/Library/Preferences/AndroidStudio*',
                   '~/Library/Preferences/com.google.android.studio.plist',
                   '~/Library/Application Support/AndroidStudio*',
                   '~/Library/Logs/AndroidStudio*',
                   '~/Library/Caches/AndroidStudio*',
                 ],
      :rmdir => '~/AndroidStudioProjects'

  caveats do
    depends_on_java
  end
end
