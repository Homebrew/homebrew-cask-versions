cask 'android-studio-preview-beta' do
  version '4.1.0.11,201.6565218'
  sha256 'f172e11c9b488065f7e6d90098db57eda0541cec88ce0b19d3284bcb342d64ff'

  # dl.google.com/dl/android/studio/ was verified as official when first introduced to the cask
  url "https://dl.google.com/dl/android/studio/ide-zips/#{version.before_comma}/android-studio-ide-#{version.after_comma}-mac.zip"
  name 'Android Studio Preview (Beta)'
  homepage 'https://developer.android.com/studio/preview/'

  conflicts_with cask: [
                         'android-studio',
                         'android-studio-preview-canary',
                       ]

  app 'Android Studio 4.1 Preview.app'

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
