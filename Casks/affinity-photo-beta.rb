cask "affinity-photo-beta" do
  version "1.8.4.186"
  sha256 "8d7e1aea8cf4b5bbbadc5181ae7d6d01c69a23c29d4c4d678d655ff63fcaa3fc"

  # affinity-beta.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta.zip"
  appcast "https://forum.affinity.serif.com/index.php?/forum/19-photo-beta-on-mac/"
  name "Serif Affinity Photo"
  homepage "https://affinity.serif.com/en-us/photo/"

  app "Affinity Photo Beta.app"
end
