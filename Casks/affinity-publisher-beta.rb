cask "affinity-publisher-beta" do
  version "1.10.2.1156"
  sha256 "95eda2d699a736cba93b3a0488938a9d336e6920c5c9735703c432b4a3ebfca1"

  url "https://beta-downloads.serif.com/download/f6b89099-eace-44b3-8ce7-76ae7b0e036d/affinity-publisher-customer-beta-#{version}.zip"
  name "Affinity Publisher"
  desc "Professional desktop publishing software"
  homepage "https://affinity.serif.com/en-us/publisher/"

  livecheck do
    url "https://forum.affinity.serif.com/index.php?/topic/83296-affinity-range-mac-beta-release-notifications/"
    regex(/Affinity\s+Publisher\s+\|\s+MacOS.+\|\s+(\d+(?:\.\d+)+)\s+\|/i)
  end

  app "Affinity Publisher Beta.app"
end
