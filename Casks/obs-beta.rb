cask "obs-beta" do
  arch arm: "arm64", intel: "x86_64"

  version "28.0.0-beta2"

  on_intel do
    sha256 "a1126f3c63b66cf6298daa33ef0e4fcb565dcc1aa38b3292556d8d05551c83a9"
  end
  on_arm do
    sha256 "4a253a5a4a0fb1f320b82ec676bc67d33f57a40dbc5d7b44106ad2daedade2dc"
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
