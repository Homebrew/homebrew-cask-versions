cask "slack-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.25.0-beta1"

  if Hardware::CPU.intel?
    sha256 "9d6b363609c717af1e4c5d100696c682f16a00961e3866608189ebe6a9731bed"
  else
    sha256 "d68a34c8415d0366687b1bd9b1af6519666ea10d091fdd013b842fad60d82499"
  end

  url "https://downloads.slack-edge.com/releases/macos/#{version}/beta/#{arch}/Slack-#{version}-macOS.zip",
      verified: "downloads.slack-edge.com/releases/macos/"
  name "Slack"
  desc "Team communication and collaboration software"
  homepage "https://slack.com/beta/osx"

  livecheck do
    url "https://slack.com/ssb/download-osx-beta"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "slack"
  depends_on macos: ">= :mojave"

  app "Slack.app"

  uninstall quit: "com.tinyspeck.slackmacgap"

  zap trash: [
    "~/Library/Application Scripts/com.tinyspeck.slackmacgap",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tinyspeck.slackmacgap.sfl*",
    "~/Library/Application Support/Slack",
    "~/Library/Caches/com.tinyspeck.slackmacgap",
    "~/Library/Caches/com.tinyspeck.slackmacgap.ShipIt",
    "~/Library/Containers/com.tinyspeck.slackmacgap",
    "~/Library/Containers/com.tinyspeck.slackmacgap.SlackCallsService",
    "~/Library/Cookies/com.tinyspeck.slackmacgap.binarycookies",
    "~/Library/Group Containers/*.com.tinyspeck.slackmacgap",
    "~/Library/Group Containers/*.slack",
    "~/Library/Logs/Slack",
    "~/Library/Preferences/ByHost/com.tinyspeck.slackmacgap.ShipIt.*.plist",
    "~/Library/Preferences/com.tinyspeck.slackmacgap.helper.plist",
    "~/Library/Preferences/com.tinyspeck.slackmacgap.plist",
    "~/Library/Saved Application State/com.tinyspeck.slackmacgap.savedState",
    "~/Library/WebKit/com.tinyspeck.slackmacgap",
  ]
end
