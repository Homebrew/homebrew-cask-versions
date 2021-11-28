cask "affinity-publisher-beta" do
  version "1.10.5.1214"
  sha256 "aadd3dd7a4b6f354d3f59b055ce894f0515d6e6553651372075406cc8cf04363"

  url "https://beta-downloads.serif.com/download/4edbe679-cdd4-4ca7-bc47-0d970e869e4e/affinity-publisher-customer-beta-#{version}.zip"
  name "Affinity Publisher"
  desc "Professional desktop publishing software"
  homepage "https://affinity.serif.com/en-us/publisher/"

  livecheck do
    url "https://forum.affinity.serif.com/index.php?/topic/83296-affinity-range-mac-beta-release-notifications/"
    regex(/Affinity\s+Publisher\s+\|\s+MacOS.+\|\s+(\d+(?:\.\d+)+)\s+\|/i)
  end

  app "Affinity Publisher Beta.app"
end
