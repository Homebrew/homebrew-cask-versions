cask "android-studio-preview-beta" do
  version "4.2.0.19,202.7033425"
  sha256 "64f11d0e1ebdc7e9ee57199f17633befac3fe8e85cb3ff9677d7fded72e23ddf"

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version.before_comma}/android-studio-ide-#{version.after_comma}-mac.zip",
      verified: "dl.google.com/dl/android/studio/"
  name "Android Studio Preview (Beta)"
  homepage "https://developer.android.com/studio/preview/"

  conflicts_with cask: "android-studio-preview-canary"

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
