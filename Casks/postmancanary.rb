cask "postmancanary" do
  arch arm: "osx_arm64", intel: "osx64"

  version "10.15.5-canary230623-1026"
  sha256 arm:   "88b53664c87083645cd33f03d001b2759846c54f99dc084adc1b02a5f2b5981f",
         intel: "5a1efa99ed5930bfe8c2bf102e804ce95346a4a7bd0697e245b2438d0c4fca16"

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
