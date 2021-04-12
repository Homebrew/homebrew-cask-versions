cask "clashx-pro" do
  version "1.50.0.1"
  sha256 "dbd7cf8e9d18e7c8edf69bf7ff971cfd0b898bf27b8a39734dd6194ed48581ae"

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
