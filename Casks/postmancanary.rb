cask "postmancanary" do
  arch arm: "osx_arm64", intel: "osx64"

  version "10.16.5-canary230801-0730"
  sha256 arm:   "458190564273ce6bf4fe3bd9160124af4d8a3b7c8b7de23b61a5e5928e74701a",
         intel: "270b4e2543b284cb91b6ad81db2a2a510f8b8a5fc824841802ec54945ecb28bc"

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
