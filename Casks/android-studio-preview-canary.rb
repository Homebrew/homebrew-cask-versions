cask "android-studio-preview-canary" do
  version "2020.3.1.14"
  sha256 "8836068ba57864dcd6847845591d1995dae17b4cad57d9773161e489398796c9"

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
