cask "postmancanary" do
  arch arm: "osx_arm64", intel: "osx64"

  version "10.13.9-canary230531-0714"
  sha256 arm:   "37d71884c61645d9bc675ba31b422be7e4b239037ce2f34f0e5c35c8f8056851",
         intel: "906bc87159852982cdcdf1637bbc5dfc2e08959828a14fe250e5d9250322bb77"

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
