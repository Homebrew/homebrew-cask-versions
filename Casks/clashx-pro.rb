cask "clashx-pro" do
  version "1.60.0.2"
  sha256 "74cb57b50e585176b33a966c38bbc1694fffa56790f79a94636fbee7d0fdbcbd"

  url "https://appcenter.vercel.app/clashx/clashx-pro/#{version}",
      verified: "appcenter.vercel.app/clashx"
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
    "/Library/PrivilegedHelperTools/com.west2online.ClashXPro.ProxyConfigHelper",
    "/Library/LaunchDaemons/com.west2online.ClashXPro.ProxyConfigHelper.plist",
  ],
            launchctl: "com.west2online.ClashXPro.ProxyConfigHelper",
            quit:      "com.west2online.ClashXPro"

  zap trash: [
    "~/Library/Application Support/com.west2online.ClashXPro",
    "~/Library/Caches/com.west2online.ClashXPro",
    "~/Library/Preferences/com.west2online.ClashXPro.plist",
    "~/Library/Logs/ClashX Pro",
  ]
end
