cask "clashx-pro" do
  version "1.40.0.2"
  sha256 "d85c37b005ed5b3501adc2ca121592215261956d312bc211f0d496f67e416c99"

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
