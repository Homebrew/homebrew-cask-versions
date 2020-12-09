cask "affinity-designer-beta" do
  version "1.9.0.10"
  sha256 "069e1f382477026454499dbc3c538950d541c357fb6f365125657619467f6d63"

  url "https://affinity-beta.s3.amazonaws.com/download/Affinity%20Designer%20Beta.dmg",
      verified: "affinity-beta.s3.amazonaws.com/"
  appcast "https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?encoding=utf8&url=https://forum.affinity.serif.com/index.php?/topic/83296-affinity-range-mac-beta-release-notifications/&splitter_1=Affinity%20Designer&index_1=1&splitter_2=Affinity%20Photo&index_2=0"
  name "Serif Affinity Designer"
  desc "Photo editing and graphic design software"
  homepage "https://affinity.serif.com/en-us/"

  app "Affinity Designer Beta.app"
end
