cask "obs-beta" do
  arch arm: "arm64", intel: "x86_64"

  version "29.1.0-beta4"
  sha256 arm:   "0bfe1084f7af73fd89befe497db6aa78754ad5e7769acc98e2293ccf385fb4df",
         intel: "8127aa5b610620e78d41ffd0a643277668018018544a7d2a5758dffe82d456ee"

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
