cask "obs-beta" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "28.0.0-beta1"

  if Hardware::CPU.intel?
    sha256 "0fa2a64acd529485487aeca811ecbd6aac0f3a2dce4bafc2760922412a893939"
  else
    sha256 "c5d2bd637b08b7d39d38465370e4d6701f7c9f295b31ca0c8d93b59040d58b14"
  end

  url "https://github.com/obsproject/obs-studio/releases/download/#{version}/obs-studio-#{version}-macos-#{arch}.dmg",
      verified: "github.com/obsproject/obs-studio/"
  name "OBS"
  desc "Open-source software for live streaming and screen recording"
  homepage "https://obsproject.com/forum/list/test-builds.20/"

  livecheck do
    url "https://github.com/obsproject/obs-studio/releases"
    strategy :page_match
    regex(/obs[._-]studio[._-](\d+(?:\.\d+)+[._-](?:beta|rc)\d*)[._-]macos[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  conflicts_with cask: "obs"
  depends_on macos: ">= :catalina"

  app "OBS.app"

  uninstall delete: "/Library/CoreMediaIO/Plug-Ins/DAL/obs-mac-virtualcam.plugin"

  zap trash: [
    "~/Library/Application Support/obs-studio",
    "~/Library/HTTPStorages/com.obsproject.obs-studio",
    "~/Library/Preferences/com.obsproject.obs-studio.plist",
    "~/Library/Saved Application State/com.obsproject.obs-studio.savedState",
  ]
end
