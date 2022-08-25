cask "obs-beta" do
  arch arm: "arm64", intel: "x86_64"

  version "28.0.0-rc2"
  sha256 arm:   "18bf780a2f19538461f834c741dc920e16158b9a9cc07341b1c262ea8b8d9a58",
         intel: "ebba8bfd5fa79436e0f1477adab820cda136ca566e6d0b8121cfb601c39c24df"

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
