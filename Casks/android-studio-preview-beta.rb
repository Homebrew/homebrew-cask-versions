cask "android-studio-preview-beta" do
  version "2020.3.1.21"

  if Hardware::CPU.intel?
    sha256 "ae3ff455fdc6c06b83b7701f8daba1af638f33e03265383fb576c8c4ed125bd7"

    url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-#{version}-mac.zip",
        verified: "dl.google.com/dl/android/studio/"
  else
    sha256 "a4ea75c0ff7de8ed940fa6e21e7d9b6218057737faa9fcbcefd299f314b5ba1a"

    url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-#{version}-mac_arm.zip",
        verified: "dl.google.com/dl/android/studio/"
  end

  name "Android Studio Preview (Beta)"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/preview/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/android[._-]studio[._-]v?(\d+(?:\.\d+)+)[._-]mac\.zip[^>]*>[\w\s.-]*?(Beta|RC)}i)
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
