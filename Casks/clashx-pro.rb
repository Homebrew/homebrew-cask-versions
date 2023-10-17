cask "clashx-pro" do
  version "1.118.1.0"
  sha256 "436042b34c338a242944d3debdb12c250726c4ce42732f1e2f2eb2dc84b7e531"

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
  depends_on macos: ">= :mojave"

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
