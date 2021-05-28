cask "android-studio-preview-beta" do
  version "2020.3.1.18"

  if Hardware::CPU.intel?
    sha256 "dd245451ab3a43de16665cd4bcea53c773b46f6c4b59cdb34a9ad551d2a52367"

    url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-#{version}-mac.zip",
        verified: "dl.google.com/dl/android/studio/"
  else
    sha256 "ad66cffbf83d5f470d64f2256b866c86da9b190330779aeb053d5c61f65971df"

    url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-#{version}-mac_arm.zip",
        verified: "dl.google.com/dl/android/studio/"
  end

  name "Android Studio Preview (Beta)"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/preview/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/android[._-]studio[._-]v?(\d+(?:\.\d+)+)[._-]mac\.zip[^>]*>[\w\s.-]*?Beta}i)
  end

  conflicts_with cask: "android-studio-preview-canary"

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
