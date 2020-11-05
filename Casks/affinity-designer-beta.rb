cask "affinity-designer-beta" do
  version "1.9.0.6"
  sha256 "d0c82d6d28f9d8720ab34658200f4e285d714a7f65bad9798f8a2fd0de1d592a"

  # affinity-beta.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://affinity-beta.s3.amazonaws.com/download/Affinity%20Designer%20Beta.dmg"
  appcast "https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?encoding=utf8&url=https://forum.affinity.serif.com/index.php?/topic/83296-affinity-range-mac-beta-release-notifications/&splitter_1=Affinity%20Designer&index_1=1&splitter_2=Affinity%20Photo&index_2=0"
  name "Serif Affinity Designer"
  homepage "https://affinity.serif.com/en-us/"

  app "Affinity Designer Beta.app"
end
