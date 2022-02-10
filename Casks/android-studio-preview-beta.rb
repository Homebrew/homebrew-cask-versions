cask "android-studio-preview-beta" do
  arch = Hardware::CPU.intel? ? "mac" : "mac_arm"

  version "2021.2.1.9"

  if Hardware::CPU.intel?
    sha256 "2f919e621a3df4c6ec424f3b6b6eb1627041e666ea7a9e475db21a6ee0c714f2"
  else
    sha256 "6c7c3e25f561937913b04ce7fd04e422c25e8371aae9216391210edb2d54ec63"
  end

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-#{version}-#{arch}.zip",
      verified: "dl.google.com/dl/android/studio/"
  name "Android Studio Preview (Beta)"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/preview/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/android[._-]studio[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.zip(.*\n*\s*.*)(Beta|RC)}i)
  end

  conflicts_with cask: "android-studio-preview-canary"

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
