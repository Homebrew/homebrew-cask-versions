cask "android-studio-preview-canary" do
  arch arm: "mac_arm", intel: "mac"

  version "2022.2.1.1"
  sha256 arm:   "1c7e2a46a212d6da366670526eeadea3a44fb11e7070d30bccec14159d157b47",
         intel: "36a7e1cfc5870da79c5227ed817527dd676f9ea2c9f7df0b2411b711098114ad"

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
