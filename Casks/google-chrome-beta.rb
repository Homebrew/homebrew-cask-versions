cask "google-chrome-beta" do
  version "89.0.4389.40,4389.40"
  sha256 :no_check

  url "https://dl.google.com/chrome/mac/universal/beta/googlechromebeta.dmg"
  name "Google Chrome Beta"
  desc "Web browser"
  homepage "https://www.google.com/chrome/beta/"

  app "Google Chrome Beta.app"

  zap trash:     [
    "/Library/Caches/com.google.SoftwareUpdate.*",
    "/Library/Google/Google Chrome Brand.plist",
    "/Library/Google/GoogleSoftwareUpdate",
    "~/Library/Application Support/Google/Chrome Beta",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.chrome.app.*.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.chrome.sfl*",
    "~/Library/Caches/Google/Chrome Beta",
    "~/Library/Caches/com.google.Chrome",
    "~/Library/Caches/com.google.Chrome.helper.*",
    "~/Library/Caches/com.google.Keystone",
    "~/Library/Caches/com.google.Keystone.Agent",
    "~/Library/Caches/com.google.SoftwareUpdate",
    "~/Library/Google/Google Chrome Brand.plist",
    "~/Library/Google/GoogleSoftwareUpdate",
    "~/Library/LaunchAgents/com.google.keystone.agent.plist",
    "~/Library/Logs/GoogleSoftwareUpdateAgent.log",
    "~/Library/Preferences/com.google.Chrome.plist",
    "~/Library/Preferences/com.google.Keystone.Agent.plist",
    "~/Library/Saved Application State/com.google.Chrome.app.*.savedState",
    "~/Library/Saved Application State/com.google.Chrome.savedState",
    "~/Library/WebKit/com.google.Chrome",
  ],
      rmdir:     [
        "/Library/Google",
        "~/Library/Application Support/Google",
        "~/Library/Caches/Google",
        "~/Library/Google",
      ],
      launchctl: [
        "com.google.keystone.agent",
        "com.google.keystone.daemon",
      ]
end
