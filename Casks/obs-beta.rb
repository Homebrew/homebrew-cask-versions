cask "obs-beta" do
  arch arm: "arm64", intel: "x86_64"

  version "29.0.0-beta1"
  sha256 arm:   "13dd8a01c4f14d2305d67829fafeae96af4ed818a01d540de7caa3ea3a090432",
         intel: "eb4ac93932749efe7d7e2d4d7600991b84eb35b88f3bf3e32be8799a5159aea2"

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
