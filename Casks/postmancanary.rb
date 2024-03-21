cask "postmancanary" do
  arch arm: "osx_arm64", intel: "osx64"

  version "10.24.7-canary240319-0746"
  sha256 arm:   "3f6965a48d56d19e1e6d5d7a7fec62346ee5ebd47d7f20112da8da98d476058a",
         intel: "fb79ee04adf1ec2e14cf49ef958ff22c50491a0588b9602af06bf133c199b1e9"

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
