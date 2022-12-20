cask "obs-beta" do
  arch arm: "arm64", intel: "x86_64"

  version "29.0.0-beta3"
  sha256 arm:   "585e0034dec4fc105c305c79e0d5a5d2b16f2b5f758a7ac511bf68eeb7884701",
         intel: "814063406993ff778d260902357359e4295616b349713fb69a72513197083139"

  url "https://github.com/obsproject/obs-studio/releases/download/#{version}/obs-studio-#{version}-macos-#{arch}.dmg",
      verified: "github.com/obsproject/obs-studio/"
  name "OBS"
  desc "Open-source software for live streaming and screen recording"
  homepage "https://obsproject.com/forum/list/test-builds.20/"

  # We use the first matching tag on the releases page, as a version with an
  # unstable suffix (e.g., `1.2.3-beta1`) would be erroneously treated as
  # newer than a subsequent stable version (e.g., `1.2.3`) due to how `Version`
  # comparison works.
  livecheck do
    url "https://github.com/obsproject/obs-studio/releases"
    regex(%r{href=["']?[^"' >]*?/tag/v?(\d+(?:\.\d+)+[^"' >]*)["' >]}i)
    strategy :page_match do |page, regex|
      page[regex, 1]
    end
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
