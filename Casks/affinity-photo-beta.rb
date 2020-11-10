cask "affinity-photo-beta" do
  version "1.9.0.203"
  sha256 "3a8c8de8944ab85e1b520ba85859dc4aa875e02e7c0eb748bf014288f2a04fde"

  # affinity-beta.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta.zip"
  appcast "https://forum.affinity.serif.com/index.php?/forum/19-photo-beta-on-mac/"
  name "Serif Affinity Photo"
  homepage "https://affinity.serif.com/en-us/photo/"

  app "Affinity Photo Beta.app"
end
