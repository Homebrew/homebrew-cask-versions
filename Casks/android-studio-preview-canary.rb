cask "android-studio-preview-canary" do
  version "2021.1.1.8"

  if Hardware::CPU.intel?
    sha256 "bd6db11418a52fd1ae3b93202a9a9a405543d971045e0c3ae0ac27a81e8ff272"

    url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-#{version}-mac.zip",
        verified: "dl.google.com/dl/android/studio/"
  else
    sha256 "a5acbaf38f015dff1236fca5f13f248cf4a3c8c7c0f33f49bd290f806bdd3076"

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
