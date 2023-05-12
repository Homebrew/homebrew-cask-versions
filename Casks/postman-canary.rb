cask "postman-canary" do
  arch arm: "osx_arm64", intel: "osx64"

  version "10.13.7-canary230510-0719"
  sha256 arm:   "dbcc2f688f5d4b03beceb98803cacc07441398c00df2d40ef15b172d5ab94218",
         intel: "007e6c0fa026a4a05f541c440f8f3343ab6a117d1505d22e4803bd17c0da6963"

  url "https://dl.pstmn.io/download/channel/canary/#{arch}",
      verified: "dl.pstmn.io/download/channel/canary/"
  name "Postman Canary"
  desc "Collaboration platform for API development"
  homepage "https://www.postman.com/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true

  app "PostmanCanary.app"

  zap trash: [
    # "~/Library/Application Support/com.postmanlabs.mac.ShipIt",
    "~/Library/Application Support/PostmanCanary",
    # "~/Library/Caches/com.postmanlabs.mac.ShipIt",
    # "~/Library/Caches/com.postmanlabs.mac",
    # "~/Library/Caches/PostmanCanary",
    # "~/Library/HTTPStorages/com.postmanlabs.mac",
    # "~/Library/Preferences/ByHost/com.postmanlabs.mac.ShipIt.*.plist",
    # "~/Library/Preferences/com.postmanlabs.mac.plist",
    # "~/Library/Saved Application State/com.postmanlabs.mac.savedState",
  ]
end
