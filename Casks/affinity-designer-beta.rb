cask "affinity-designer-beta" do
  version "1.10.5.1"
  sha256 :no_check

  url "https://affinity-beta.s3.amazonaws.com/download/Affinity%20Designer%20Beta.dmg",
      verified: "affinity-beta.s3.amazonaws.com/"
  name "Serif Affinity Designer"
  desc "Photo editing and graphic design software"
  homepage "https://affinity.serif.com/en-us/"

  livecheck do
    url "https://forum.affinity.serif.com/index.php?/topic/83296-affinity-range-mac-beta-release-notifications/"
    regex(/Designer.*?\|\s\s(\d+(?:\.\d+)+)/i)
  end

  app "Affinity Designer Beta.app"
end
