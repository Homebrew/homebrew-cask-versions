cask "android-studio-preview-beta" do
  arch = Hardware::CPU.intel? ? "mac" : "mac_arm"

  version "2021.1.1.16"

  if Hardware::CPU.intel?
    sha256 "7be2b5aaaa6c37d9e3f5c213851a598ac86586014478574ed16128b8734b5dc1"
  else
    sha256 "6887cdfe05b65f7af458b2d08a9b8d8d225c8779857f05b9341348db3b1d35fc"
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
