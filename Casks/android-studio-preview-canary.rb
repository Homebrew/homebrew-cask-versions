cask "android-studio-preview-canary" do
  arch = Hardware::CPU.intel? ? "mac" : "mac_arm"

  version "2021.3.1.9"

  if Hardware::CPU.intel?
    sha256 "8fef68dddb1009731973f8cf3808678166ab8ec9b7e2a5073232418c07fe8391"
  else
    sha256 "63f388f22851a578629e3df880f49d3d582408bc073e0533575e10aa51aabb24"
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
