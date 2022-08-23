cask "android-studio-preview-beta" do
  arch arm: "mac_arm", intel: "mac"

  version "2021.3.1.15"
  sha256 arm:   "8cbe062c4012612a40a014a5ebb82bdf959b0601329cf3652aeb726b190c3673",
         intel: "667f475b9b9e9f317ad0150a34372623333118bed4060e966c3e64cb46a87966"

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-#{version}-#{arch}.zip",
      verified: "dl.google.com/dl/android/studio/"
  name "Android Studio Preview (Beta)"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/preview/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/android[._-]studio[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.zip(.*\n*\s*.*)(Beta|RC)}i)
  end

  conflicts_with cask: [
    "android-studio-preview-canary",
    "android-studio",
  ]

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
