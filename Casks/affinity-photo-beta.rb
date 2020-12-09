cask "affinity-photo-beta" do
  version "1.9.0.206"
  sha256 "4dfa3277fefadd02303a4d5e34df6591069b4fa9b9a0584ce1b210c760e4c411"

  url "https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta.zip",
      verified: "affinity-beta.s3.amazonaws.com/"
  appcast "https://forum.affinity.serif.com/index.php?/forum/19-photo-beta-on-mac/"
  name "Serif Affinity Photo"
  homepage "https://affinity.serif.com/en-us/photo/"

  app "Affinity Photo Beta.app"
end
