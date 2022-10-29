cask "affinity-photo-beta" do
  version "1.10.5.270"
  sha256 :no_check

  url "https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta.zip",
      verified: "affinity-beta.s3.amazonaws.com/"
  name "Serif Affinity Photo"
  desc "Professional image editing software"
  homepage "https://affinity.serif.com/en-us/photo/"

  livecheck do
    url "https://forum.affinity.serif.com/index.php?/topic/83296-affinity-range-mac-beta-release-notifications/"
    regex(/Photo.*?\|\s\s(\d+(?:\.\d+)+)/i)
  end

  app "Affinity Photo Beta.app"
end
