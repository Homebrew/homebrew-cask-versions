cask "android-studio-preview-canary" do
  version "2021.1.1.5"

  if Hardware::CPU.intel?
    sha256 "bc0df2673d7728aeef58d545e7daa582ba0f6380dcbae34893a30ccb86875229"

    url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-#{version}-mac.zip",
        verified: "dl.google.com/dl/android/studio/"
  else
    sha256 "22eb0c90cd08690ecccafc9c52f681ae22a955a1513b0a44aace6217aa1d2fce"

    url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-#{version}-mac_arm.zip",
        verified: "dl.google.com/dl/android/studio/"
  end

  name "Android Studio Preview (Canary)"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/preview/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/android[._-]studio[._-]v?(\d+(?:\.\d+)+)[._-]mac\.zip[^>]*>[\w\s.-]*?Canary}i)
  end

  conflicts_with cask: "android-studio-preview-beta"

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
