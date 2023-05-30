cask "android-studio-preview-beta" do
  arch arm: "mac_arm", intel: "mac"

  version "2022.3.1.15"
  sha256 arm:   "87e07d70a5fcbb259951e75f4a9943b32c781a800f42a7f077c3e61d4a5a6c64",
         intel: "17f24d0f2bedaac2533651c4c53b17d6c06d85b7527db928ec06b992f46f46b7"

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-#{version}-#{arch}.zip",
      verified: "dl.google.com/dl/android/studio/"
  name "Android Studio Preview (Beta)"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/preview/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/android[._-]studio[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.zip(.*\n*\s*.*)(Beta|RC)}i)
  end

  auto_updates true
  conflicts_with cask: "android-studio-preview-canary"

  # Renamed for consistency; name changes between beta and RC versions
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
