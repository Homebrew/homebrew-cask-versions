cask "affinity-publisher-beta" do
  version "1.10.2.1187"
  sha256 "aec8f2ea4eb5c4022b76bb5625fe8b096a2f80f10be4f03d38e5d9c1ba97fb9d"

  url "https://beta-downloads.serif.com/download/056ac8f5-2438-4245-9663-8f60d61feda4/affinity-publisher-customer-beta-#{version}.zip"
  name "Affinity Publisher"
  desc "Professional desktop publishing software"
  homepage "https://affinity.serif.com/en-us/publisher/"

  livecheck do
    url "https://forum.affinity.serif.com/index.php?/topic/83296-affinity-range-mac-beta-release-notifications/"
    regex(/Affinity\s+Publisher\s+\|\s+MacOS.+\|\s+(\d+(?:\.\d+)+)\s+\|/i)
  end

  app "Affinity Publisher Beta.app"
end
