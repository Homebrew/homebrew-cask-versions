cask "clashx-pro" do
  version "1.116.2.1"
  sha256 "54211f52fec0ea761f865e04d7d82582162108e40c0d32fd0161c844b2e5796b"

  url "https://appcenter.clashx.workers.dev/api/1cd052f7-e118-4d13-87fb-35176f9702c1/#{version}",
      verified: "appcenter.clashx.workers.dev/api/1cd052f7-e118-4d13-87fb-35176f9702c1/"
  name "ClashX Pro"
  desc "Rule-based custom proxy with GUI based on clash"
  homepage "https://github.com/yichengchen/clashX"

  livecheck do
    url "https://api.appcenter.ms/v0.1/public/sparkle/apps/1cd052f7-e118-4d13-87fb-35176f9702c1"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "ClashX Pro.app"

  uninstall delete:    [
              "/Library/LaunchDaemons/com.west2online.ClashXPro.ProxyConfigHelper.plist",
              "/Library/PrivilegedHelperTools/com.west2online.ClashXPro.ProxyConfigHelper",
            ],
            launchctl: "com.west2online.ClashXPro.ProxyConfigHelper",
            quit:      "com.west2online.ClashXPro"

  zap trash: [
    "~/Library/Application Support/com.west2online.ClashXPro",
    "~/Library/Caches/com.west2online.ClashXPro",
    "~/Library/Logs/ClashX Pro",
    "~/Library/Preferences/com.west2online.ClashXPro.plist",
  ]
end
