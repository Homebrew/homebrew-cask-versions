cask "affinity-designer-beta" do
  version "1.8.4.5"
  sha256 "46afa474565015501d6c9d954dd5843d6af7e30e04a534e1e27f0d96da6ff294"

  # affinity-beta.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://affinity-beta.s3.amazonaws.com/download/Affinity%20Designer%20Beta.dmg"
  appcast "https://forum.affinity.serif.com/index.php?/forum/15-designer-beta-on-mac/"
  name "Serif Affinity Designer"
  homepage "https://affinity.serif.com/en-us/"

  app "Affinity Designer Beta.app"
end
