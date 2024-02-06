cask "postmancanary" do
  arch arm: "osx_arm64", intel: "osx64"

  version "10.23.1-canary240202-1241"
  sha256 arm:   "9fa9dfba1fe59b26b71a5558f05ab5bfc0608a1bada5871cbac0f517e674859b",
         intel: "82e72250c87fb2a5ac5aa413a425094f7b6d31e8878a7f1d5cd1b142f4232edc"

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
