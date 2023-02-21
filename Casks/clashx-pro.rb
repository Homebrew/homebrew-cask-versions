cask "clashx-pro" do
  version "1.97.0"
  sha256 "885f93cc0fb80bfc7c188795eec133610a4e6caf1ce31f3f76d42ac86c8b3ea4"

  url "https://github.com/yichengchen/clashX/releases/download/#{version}/ClashX.dmg"
  name "ClashX Pro"
  desc "Rule-based custom proxy with GUI based on clash"
  homepage "https://github.com/yichengchen/clashX"

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
