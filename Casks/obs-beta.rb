cask "obs-beta" do
  arch arm: "arm64", intel: "x86_64"

  version "29.0.1"
  sha256 arm:   "d24bcfac2f3b0ef5682a2c8d1325b2620eac6c06b14a3f81d552c043072b364a",
         intel: "62530c5bbef3778ee77a5e390dce75111346ff732c7ace3b5398d465de809da5"

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
