cask "affinity-designer-beta" do
  version "1.9.0.9"
  sha256 "33090f1b5179d98ca512b08f57213ecb125f8c8fb6bd078f0b89d604caf62652"

  # affinity-beta.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://affinity-beta.s3.amazonaws.com/download/Affinity%20Designer%20Beta.dmg"
  appcast "https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?encoding=utf8&url=https://forum.affinity.serif.com/index.php?/topic/83296-affinity-range-mac-beta-release-notifications/&splitter_1=Affinity%20Designer&index_1=1&splitter_2=Affinity%20Photo&index_2=0"
  name "Serif Affinity Designer"
  desc "Photo editing and graphic design software"
  homepage "https://affinity.serif.com/en-us/"

  app "Affinity Designer Beta.app"
end
