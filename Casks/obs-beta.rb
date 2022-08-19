cask "obs-beta" do
  arch arm: "arm64", intel: "x86_64"

  version "28.0.0-rc1"

  on_intel do
    sha256 "597445b2fcba4288266b71d3d313e6356dff08815499ec62301c439b1a30a579"
  end
  on_arm do
    sha256 "65f34b8f517abffc8bd6f612e5109148b7ef2f3e19020134fb6c1359b09f506c"
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
