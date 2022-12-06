cask "affinity-publisher-beta" do
  version "1.10.5.1282"
  sha256 "921ce7a37541ec4453dbdd99d8160181aedf5c70b2a99ae464bc74c652523486"

  url "https://beta-downloads.serif.com/download/Publisher/0cf7e2f0-a264-4a33-92e6-cf894e1aa918/affinity-publisher-customer-beta-#{version}.zip"
  name "Affinity Publisher"
  desc "Professional desktop publishing software"
  homepage "https://affinity.serif.com/en-us/publisher/"

  # The link below is the new URL for v2 beta releases
  # url "https://forum.affinity.serif.com/index.php?/forum/57-publisher-beta-on-macos/"
  # regex(/Publisher.*?\|\s\s(\d+(?:\.\d+)+)/i)

  livecheck do
    skip "Beta information for v2 is not yet available"
  end

  app "Affinity Publisher Beta.app"
end
