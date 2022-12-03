cask "obs-beta" do
  arch arm: "arm64", intel: "x86_64"

  version "29.0.0-beta2"
  sha256 arm:   "ed8fe8c304b16a7246e8262e00942688803d25c1489063d966a396d5cf45138f",
         intel: "eb19e5ab5b38853e966fff15ce5f7a54cb50f73578ce7b70e06764109f135a1f"

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
