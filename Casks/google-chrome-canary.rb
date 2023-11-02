cask "google-chrome-canary" do
  version "121.0.6101.0"
  sha256 :no_check

  url "https://dl.google.com/chrome/mac/universal/canary/googlechromecanary.dmg"
  name "Google Chrome Canary"
  desc "Web browser"
  homepage "https://www.google.com/chrome/canary/"

  # Canary releases are frequent, so this `strategy` block throttles livecheck
  # to every fifth release. Ideally this should be handled outside of livecheck
  # but this is an interim workaround.
  livecheck do
    url "https://chromiumdash.appspot.com/fetch_releases?channel=Canary&platform=Mac"
    strategy :json do |json|
      versions = json.map { |item| item["version"] }
                     .compact
                     .uniq
                     .sort_by { |v| Version.new(v) }
                     .reverse
      current_pos = versions.index(version)

      # Fall back to the newest version if the current version isn't found
      next versions.first if current_pos.blank?

      # Return the newest version if there have been five or more releases
      # since the version in the cask.
      (current_pos >= 5) ? versions.first : version
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Google Chrome Canary.app"

  zap trash:     [
        "/Library/Caches/com.google.SoftwareUpdate.*",
        "/Library/Google/Google Chrome Brand.plist",
        "/Library/Google/GoogleSoftwareUpdate",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.chrome.app.*.sfl*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.chrome.sfl*",
        "~/Library/Application Support/Google/Chrome Canary",
        "~/Library/Caches/com.google.Chrome.helper.*",
        "~/Library/Caches/com.google.Chrome",
        "~/Library/Caches/com.google.Keystone.Agent",
        "~/Library/Caches/com.google.Keystone",
        "~/Library/Caches/com.google.SoftwareUpdate",
        "~/Library/Caches/Google/Chrome Canary",
        "~/Library/Google/Google Chrome Brand.plist",
        "~/Library/Google/GoogleSoftwareUpdate",
        "~/Library/LaunchAgents/com.google.keystone.agent.plist",
        "~/Library/LaunchAgents/com.google.keystone.xpcservice.plist",
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
