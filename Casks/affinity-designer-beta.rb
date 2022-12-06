cask "affinity-designer-beta" do
  version "1.10.5.1"
  sha256 :no_check

  url "https://affinity-beta.s3.amazonaws.com/download/Affinity%20Designer%20Beta.dmg",
      verified: "affinity-beta.s3.amazonaws.com/"
  name "Serif Affinity Designer"
  desc "Photo editing and graphic design software"
  homepage "https://affinity.serif.com/en-us/"

  # The link below is the new URL for v2 beta releases
  # url "https://forum.affinity.serif.com/index.php?/forum/15-designer-beta-on-macos/"
  # regex(/Designer.*?\|\s\s(\d+(?:\.\d+)+)/i)

  livecheck do
    skip "Beta information for v2 is not yet available"
  end

  app "Affinity Designer Beta.app"
end
