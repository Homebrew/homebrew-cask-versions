cask 'android-studio-preview-canary' do
  version '4.1.0.10,201.6507185'
  sha256 'f5bf9f1359df2cf1a8eab7bf91ede765c49eca4b06b49ade11862fe6e8daddc7'

  # dl.google.com/dl/android/studio/ was verified as official when first introduced to the cask
  url "https://dl.google.com/dl/android/studio/ide-zips/#{version.before_comma}/android-studio-ide-#{version.after_comma}-mac.zip"
  name 'Android Studio Preview (Canary)'
  homepage 'https://developer.android.com/studio/preview/'

  app "Android Studio #{version.major_minor} Preview.app"

  zap trash: [
               '~/Library/Android/sdk',
               "~/Library/Application Support/AndroidStudio#{version.major_minor}",
               "~/Library/Caches/AndroidStudio#{version.major_minor}",
               "~/Library/Logs/AndroidStudio#{version.major_minor}",
               "~/Library/Preferences/AndroidStudio#{version.major_minor}",
               '~/Library/Preferences/com.android.Emulator.plist',
               '~/Library/Saved Application State/com.google.android.studio.savedState',
               '~/.android',
             ],
      rmdir: [
               '~/AndroidStudioProjects',
               '~/Library/Android',
             ]
end
