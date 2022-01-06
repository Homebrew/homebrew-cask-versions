cask "android-studio-preview-beta" do
  arch = Hardware::CPU.intel? ? "mac" : "mac_arm"

  version "2021.1.1.19"

  if Hardware::CPU.intel?
    sha256 "32a0e81d1de412601ef2d7a1d177d4a5830bb513c46674502bdd833253c69e50"
  else
    sha256 "66e75b427155ba5b07cfa0e7eefc5c3864269411e16674b300a5f475f026a64f"
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

  conflicts_with cask: "android-studio"

  app "Android Studio.app"

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
