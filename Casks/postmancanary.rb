cask "postmancanary" do
  arch arm: "osx_arm64", intel: "osx64"

  version "10.15.6-canary230706-1055"
  sha256 arm:   "13598e5fb621228a49f2734216590ddd14ca8e017256ec57034edef7f57ba139",
         intel: "70e02988ffa7df4814570d0d41f87f79eb0ace679c112a111d7b9aea3ae6f30d"

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
