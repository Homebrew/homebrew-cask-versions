cask "android-studio-preview-canary" do
  version "2020.3.1.10"
  sha256 "3e090c4cdb3e0efa83a84660cc67eb73b2b41c2a6432fd4416b3c7baba1495cf"

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-#{version}-mac.zip",
      verified: "dl.google.com/dl/android/studio/"
  name "Android Studio Preview (Canary)"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/preview/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/android-studio-(\d+(?:\.\d+)*)-mac.zip/)
  end

  conflicts_with cask: "android-studio-preview-beta"

  app "Android Studio Preview.app"

  zap trash: [
    "~/Library/Android/sdk",
    "~/Library/Application Support/Google/AndroidStudioPreview#{version.major_minor}",
    "~/Library/Caches/Google/AndroidStudioPreview#{version.major_minor}",
    "~/Library/Logs/Google/AndroidStudioPreview#{version.major_minor}",
    "~/Library/Preferences/com.google.android.studio-EAP.plist",
    "~/Library/Preferences/com.android.Emulator.plist",
    "~/Library/Saved Application State/com.google.android.studio-EAP.savedState",
    "~/.android",
  ],
      rmdir: [
        "~/AndroidStudioProjects",
        "~/Library/Android",
      ]
end
