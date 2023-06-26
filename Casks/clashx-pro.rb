cask "clashx-pro" do
  version "1.116.3.1"
  sha256 "8d5e42e4711c133820f7edb323a7e24571cddd587dc207197f20ce366101b4b3"

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
