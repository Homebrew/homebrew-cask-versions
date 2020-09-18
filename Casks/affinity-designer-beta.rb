cask "affinity-designer-beta" do
  version "1.9.0.2"
  sha256 "91a65f3f85b1c661f08fa924ae0192daf20e4a57f43a2ef76a618798df43c1dd"

  # affinity-beta.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://affinity-beta.s3.amazonaws.com/download/Affinity%20Designer%20Beta.dmg"
  appcast "https://forum.affinity.serif.com/index.php?/forum/15-designer-beta-on-mac/"
  name "Serif Affinity Designer"
  homepage "https://affinity.serif.com/en-us/"

  app "Affinity Designer Beta.app"
end
