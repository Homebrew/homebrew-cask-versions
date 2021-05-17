cask "affinity-photo-beta" do
  version "1.9.4.243"
  sha256 :no_check

  url "https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta.zip",
      verified: "affinity-beta.s3.amazonaws.com/"
  appcast "https://forum.affinity.serif.com/index.php?/forum/19-photo-beta-on-mac/"
  name "Serif Affinity Photo"
  homepage "https://affinity.serif.com/en-us/photo/"

  app "Affinity Photo Beta.app"
end
