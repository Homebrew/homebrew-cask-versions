cask "android-studio-preview-beta" do
  arch arm: "mac_arm", intel: "mac"

  version "2022.2.1.17"
  sha256 arm:   "b39efbf2fa40375c1fafeb2f99c38777512aedb3224c6ca1d5a9ede9ecb2ac41",
         intel: "48295d9abaf76b8171832a9311fdf34ba03e8b76f8c208c41323f016ebc652c9"

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
  app "Android Studio.app", target: "Android Studio Preview.app"

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
