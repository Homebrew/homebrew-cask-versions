cask "postmancanary" do
  arch arm: "osx_arm64", intel: "osx64"

  version "10.16.4-canary230725-1322"
  sha256 arm:   "4150fef30bbc8848b32cff51ec80946e15d08b619dd282debb57b6f3cb68eedb",
         intel: "e0f6141ff4d4309f55bd2228ca1296205d445f5dd240222a4ed663f4e25667f9"

  url "https://dl.pstmn.io/download/version/#{version}/#{arch}",
      verified: "dl.pstmn.io/download/version/"
  name "Postman Canary"
  desc "Collaboration platform for API development"
  homepage "https://www.postman.com/"

  # This is a workaround to a slow-to-update livecheck. It uses the in-app
  # update check link and queries the available versions for a generic major
  # version. We cannot use #{version} as the URL does not exist if #{version}
  # is the latest version available.
  livecheck do
    url "https://dl.pstmn.io/update/status?currentVersion=#{version.major}.0.0&platform=osx_arm64&channel=canary"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  app "PostmanCanary.app"

  zap trash: "~/Library/Application Support/PostmanCanary"
end
