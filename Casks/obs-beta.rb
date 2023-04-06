cask "obs-beta" do
  arch arm: "arm64", intel: "x86_64"

  version "29.1.0-beta3"
  sha256 arm:   "45619a09200265894f4c79b6985317469e0c027d851b1e90b55aab5a3794ebf2",
         intel: "2862d561f378cac7d69d6cbb1d8707541e9c523d53b1c363c9d4bd56dd101301"

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
