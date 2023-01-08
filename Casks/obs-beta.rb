cask "obs-beta" do
  arch arm: "arm64", intel: "x86_64"

  version "29.0.0"
  sha256 arm:   "b06753c7398857afc37a7e398a74e92728dfce3d515964ee21a0a9cc32bcc81b",
         intel: "6e8eb451d22d66c7e06cdfcd9b95e0ce91f595994f02b6319d876bd3ee583770"

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
