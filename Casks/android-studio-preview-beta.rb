cask "android-studio-preview-beta" do
  version "2020.3.1.16"
  sha256 "7342d856931eb798c1a8d6d0e8857205e6d9c1f3633d2afcea4fca3dc8544853"

  url "https://dl.google.com/dl/android/studio/ide-zips/#{version}/android-studio-#{version}-mac.zip",
      verified: "dl.google.com/dl/android/studio/"
  name "Android Studio Preview (Beta)"
  desc "Tools for building Android applications"
  homepage "https://developer.android.com/studio/preview/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/(\d+(?:\.\d+)+)/android-studio-ide-(\d+(?:\.\d+)+)-mac\.zip}i)
      "#{match[1]},#{match[2]}"
    end
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
