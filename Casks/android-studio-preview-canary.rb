cask "android-studio-preview-canary" do
  arch = Hardware::CPU.intel? ? "mac" : "mac_arm"

  version "2021.3.1.5"

  if Hardware::CPU.intel?
    sha256 "38500ca9b170c99ee9cf10e9023d3c34025e2ac04ba9865036a3dbddec6ed09f"
  else
    sha256 "58599db004560cfca1113f9a52c47244b2508ebe7a60bdf8885d3e254a776f3f"
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

  conflicts_with cask: "android-studio-preview-beta"

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
