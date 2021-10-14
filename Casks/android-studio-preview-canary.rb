cask "android-studio-preview-canary" do
  version "2021.2.1.1"

  if Hardware::CPU.intel?
    sha256 "35f92fb1cea003ab331bfad276a64f2f0a0df52912560b03bf42718da5a9fe32"

    url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-#{version}-mac.zip",
        verified: "dl.google.com/dl/android/studio/"
  else
    sha256 "8a7fb0aa9c3e2b68ef1fa7f866d677f979703d40f80d6aa12962f445d54aa458"

    url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-#{version}-mac_arm.zip",
        verified: "dl.google.com/dl/android/studio/"
  end

  name "Android Studio Preview (Canary)"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/preview/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/android[._-]studio[._-]v?(\d+(?:\.\d+)+)[._-]mac\.zip}i)
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
