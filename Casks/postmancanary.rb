cask "postmancanary" do
  arch arm: "osx_arm64", intel: "osx64"

  version "10.13.7-canary230510-0719"
  sha256 arm:   "dbcc2f688f5d4b03beceb98803cacc07441398c00df2d40ef15b172d5ab94218",
         intel: "007e6c0fa026a4a05f541c440f8f3343ab6a117d1505d22e4803bd17c0da6963"

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
