cask "android-studio-preview-canary" do
  arch arm: "mac_arm", intel: "mac"

  version "2023.2.1.14"
  sha256 arm:   "896a4191578945110578fe9fbc9efafb2d79a3e714e9a068cf8d3ffbb7e39da0",
         intel: "d9a93ee7ef5d08c22f02df1505f4e7ab06720970708e29705f0f2d9b3683cdf7"

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

  app "Android Studio Preview.app", target: "Android Studio Preview Canary.app"

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
