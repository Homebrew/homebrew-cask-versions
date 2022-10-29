cask "affinity-publisher-beta" do
  version "1.10.5.1282"
  sha256 "921ce7a37541ec4453dbdd99d8160181aedf5c70b2a99ae464bc74c652523486"

  url "https://beta-downloads.serif.com/download/Publisher/0cf7e2f0-a264-4a33-92e6-cf894e1aa918/affinity-publisher-customer-beta-#{version}.zip"
  name "Affinity Publisher"
  desc "Professional desktop publishing software"
  homepage "https://affinity.serif.com/en-us/publisher/"

  livecheck do
    url "https://forum.affinity.serif.com/index.php?/topic/83296-affinity-range-mac-beta-release-notifications/"
    regex(/Publisher.*?\|\s\s(\d+(?:\.\d+)+)/i)
  end

  app "Affinity Publisher Beta.app"
end
