cask "affinity-photo-beta" do
  version "1.9.0.205"
  sha256 "6931cd26990576547040552329d720d08c6cbbcb77c6421ba6805617309da6c9"

  # affinity-beta.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta.zip"
  appcast "https://forum.affinity.serif.com/index.php?/forum/19-photo-beta-on-mac/"
  name "Serif Affinity Photo"
  homepage "https://affinity.serif.com/en-us/photo/"

  app "Affinity Photo Beta.app"
end
