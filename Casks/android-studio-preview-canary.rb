cask "android-studio-preview-canary" do
  arch arm: "mac_arm", intel: "mac"

  version "2022.3.1.3"
  sha256 arm:   "2af8ca99b9f5be09ecb65204e498ac5f79a502845d74c85a1612bd69e17eb4ea",
         intel: "b6eede52b9f5946240510f4d50937d9f6f51ac0a795a17ad176065f476129403"

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-#{version}-#{arch}.zip",
      verified: "dl.google.com/dl/android/studio/"
  name "Android Studio Preview (Canary)"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/preview/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/android[._-]studio[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.zip}i)
  end

  auto_updates true
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
