cask "android-studio-preview-canary" do
  version "4.2.0.6,201.6712195"
  sha256 "b8a214e4b34ab4ef642a4ca1f2480d7f743d25539c832f3e0cc481db3ea8e01c"

  # dl.google.com/dl/android/studio/ was verified as official when first introduced to the cask
  url "https://dl.google.com/dl/android/studio/ide-zips/#{version.before_comma}/android-studio-ide-#{version.after_comma}-mac.zip"
  name "Android Studio Preview (Canary)"
  homepage "https://developer.android.com/studio/preview/"

  conflicts_with cask: [
    "android-studio",
    "android-studio-preview-beta",
  ]

  app "Android Studio #{version.major_minor} Preview.app"

  zap trash: [
    "~/Library/Android/sdk",
    "~/Library/Application Support/AndroidStudio#{version.major_minor}",
    "~/Library/Caches/AndroidStudio#{version.major_minor}",
    "~/Library/Logs/AndroidStudio#{version.major_minor}",
    "~/Library/Preferences/AndroidStudio#{version.major_minor}",
    "~/Library/Preferences/com.android.Emulator.plist",
    "~/Library/Saved Application State/com.google.android.studio.savedState",
    "~/.android",
  ],
      rmdir: [
        "~/AndroidStudioProjects",
        "~/Library/Android",
      ]
end
