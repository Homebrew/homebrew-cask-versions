cask "android-studio-preview-canary" do
  arch = Hardware::CPU.intel? ? "mac" : "mac_arm"

  version "2022.1.1.9"

  if Hardware::CPU.intel?
    sha256 "75078236fe0bd9fc8224356763b25701fbffe7958a5ac8dd272ca478f27592b9"
  else
    sha256 "dea4623a3b837b5068a2c4cbf10598f722e69f21f7c6ec5320c7e9ca9f8d06b9"
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
