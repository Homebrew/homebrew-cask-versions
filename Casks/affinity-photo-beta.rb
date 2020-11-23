cask "affinity-photo-beta" do
  version "1.9.0.210"
  sha256 "4811c5c00d9af8b1bacaf4248dc3f332bf2e3cfaf9bf5f25b16d1847c721d853"

  # affinity-beta.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta.zip"
  appcast "https://forum.affinity.serif.com/index.php?/forum/19-photo-beta-on-mac/"
  name "Serif Affinity Photo"
  homepage "https://affinity.serif.com/en-us/photo/"

  app "Affinity Photo Beta.app"
end
