cask "android-studio-preview-beta" do
  arch arm: "mac_arm", intel: "mac"

  version "2023.2.1.20"
  sha256 arm:   "fde85c1aad1852322dc61de383ce691df936b73237513159831f3f16eebabf27",
         intel: "a55342150f9c0f7695b19567a80f2fe3bbe80e55cdebf33c50db4f10df473097"

  url "https://redirector.gvt1.com/edgedl/android/studio/install/#{version}/android-studio-#{version}-#{arch}.dmg",
      verified: "redirector.gvt1.com/edgedl/android/studio/install/"
  name "Android Studio Preview (Beta)"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/preview/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/android[._-]studio[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg(.*\n*\s*.*)(Beta|RC)}i)
  end

  auto_updates true

  app "Android Studio Preview.app", target: "Android Studio Preview Beta.app"

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
