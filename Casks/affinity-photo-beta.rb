cask "affinity-photo-beta" do
  version "1.9.0.206"
  sha256 :no_check

  # affinity-beta.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta.zip"
  appcast "https://forum.affinity.serif.com/index.php?/forum/19-photo-beta-on-mac/"
  name "Serif Affinity Photo"
  homepage "https://affinity.serif.com/en-us/photo/"

  app "Affinity Photo Beta.app"
end
