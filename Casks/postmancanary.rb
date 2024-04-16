cask "postmancanary" do
  arch arm: "osx_arm64", intel: "osx64"

  version "10.24.19-canary240415-0915"
  sha256 arm:   "a7ddbe58459494e695af5335b4dcd7685b6a128e9074900ad9ce65af8afeac08",
         intel: "a1f4e51250d4eb98bd13e5e0f4c217f715e27d7af9ab19aee0ad80eac2bdc493"

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
