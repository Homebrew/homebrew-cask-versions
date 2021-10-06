cask "affinity-publisher-beta" do
  version "1.10.2.1167"
  sha256 "97a9e6fa4374e52c4e3740ffbd6bc07690c78996fe2cbb123de8f57d19d392f8"

  url "https://beta-downloads.serif.com/download/ece3d4cf-3976-4bff-a084-583cc53c6176/affinity-publisher-customer-beta-#{version}.zip"
  name "Affinity Publisher"
  desc "Professional desktop publishing software"
  homepage "https://affinity.serif.com/en-us/publisher/"

  livecheck do
    url "https://forum.affinity.serif.com/index.php?/topic/83296-affinity-range-mac-beta-release-notifications/"
    regex(/Affinity\s+Publisher\s+\|\s+MacOS.+\|\s+(\d+(?:\.\d+)+)\s+\|/i)
  end

  app "Affinity Publisher Beta.app"
end
