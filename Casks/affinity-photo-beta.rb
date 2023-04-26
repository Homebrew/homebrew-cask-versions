cask "affinity-photo-beta" do
  version "1.10.5.270"
  sha256 :no_check

  url "https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta.zip",
      verified: "affinity-beta.s3.amazonaws.com/"
  name "Serif Affinity Photo"
  desc "Professional image editing software"
  homepage "https://affinity.serif.com/en-us/photo/"

  # The link below is the new URL for v2 beta releases
  # url "https://forum.affinity.serif.com/index.php?/forum/19-photo-beta-on-macos/"
  # regex(/Photo.*?\|\s\s(\d+(?:\.\d+)+)/i)

  livecheck do
    skip "Beta information for v2 is not yet available"
  end

  app "Affinity Photo Beta.app"

  zap trash: [
    "~/Library/Application Scripts/6LVTQB9699.com.seriflabs.beta",
    "~/Library/Application Support/Affinity Photo Beta",
    "~/Library/Caches/com.apple.helpd/Generated/com.seriflabs.affinityphoto.beta.help*1.10.5",
    "~/Library/Caches/com.seriflabs.affinityphoto.beta",
    "~/Library/Group Containers/6LVTQB9699.com.seriflabs.beta",
    "~/Library/HTTPStorages/com.seriflabs.affinityphoto.beta",
    "~/Library/Mobile Documents/iCloud~com~seriflabs~affinityphoto/",
    "~/Library/Preferences/com.seriflabs.affinityphoto.beta.plist",
    "~/Library/Saved Application State/com.seriflabs.affinityphoto.beta.savedState",
  ]
end
