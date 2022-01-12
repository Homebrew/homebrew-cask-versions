cask "android-studio-preview-canary" do
  arch = Hardware::CPU.intel? ? "mac" : "mac_arm"

  version "2021.2.1.7"

  if Hardware::CPU.intel?
    sha256 "ead2ba0d3eadb98ef82276405dfda905e9b8199ac18af5861d25d255328ae6f2"
  else
    sha256 "bfa6d3ed4ff71758b1835fcf7f608bd10dbc138d601558850498bbe27526d3cf"
  end

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-#{version}-#{arch}.zip",
      verified: "dl.google.com/dl/android/studio/"
  name "Android Studio Preview (Canary)"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/preview/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/android[._-]studio[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.zip}i)
  end

  app "Android Studio Preview.app"

  zap trash: [
    "~/.android",
    "~/Library/Android/sdk",
    "~/Library/Application Support/Google/AndroidStudioPreview#{version.major_minor}",
    "~/Library/Caches/Google/AndroidStudioPreview#{version.major_minor}",
    "~/Library/Logs/Google/AndroidStudioPreview#{version.major_minor}",
    "~/Library/Preferences/com.android.Emulator.plist",
    "~/Library/Preferences/com.google.android.studio-EAP.plist",
    "~/Library/Saved Application State/com.google.android.studio-EAP.savedState",
  ],
      rmdir: [
        "~/AndroidStudioProjects",
        "~/Library/Android",
      ]
end
