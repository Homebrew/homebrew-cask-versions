cask "obs-beta" do
  arch arm: "arm64", intel: "x86_64"

  version "29.1.0-beta2"
  sha256 arm:   "b8dbbfc8a5e3b41eb13c13f0e309575f2a94649e65ee197abef390dae8f1c25a",
         intel: "6d56f6bb0cd0f758e422fc1841c5a6eba11434ecd05cfae593d25c33b29edc1b"

  url "https://cdn-fastly.obsproject.com/downloads/obs-studio-#{version}-macos-#{arch}.dmg"
  name "OBS"
  desc "Open-source software for live streaming and screen recording"
  homepage "https://obsproject.com/forum/list/test-builds.20/"

  livecheck do
    url "https://obsproject.com/osx_update/updates_#{arch}_v2.xml"
    regex(/obs[._-]studio[._-](\d+(?:[.-]\d+)+(?:-beta)\d+)[._-]macos/i)
    strategy :sparkle do |item|
      item.url[regex, 1]
    end
  end

  auto_updates true
  conflicts_with cask: "obs"
  depends_on macos: ">= :big_sur"

  app "OBS.app"

  uninstall delete: "/Library/CoreMediaIO/Plug-Ins/DAL/obs-mac-virtualcam.plugin"

  zap trash: [
    "~/Library/Application Support/obs-studio",
    "~/Library/HTTPStorages/com.obsproject.obs-studio",
    "~/Library/Preferences/com.obsproject.obs-studio.plist",
    "~/Library/Saved Application State/com.obsproject.obs-studio.savedState",
  ]
end
