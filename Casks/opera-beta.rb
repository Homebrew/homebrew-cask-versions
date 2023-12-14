cask "opera-beta" do
  version "106.0.4998.12"
  sha256 "0237ba988742f4f92e255b612d5acea9e711288dc9df2cc9b9067c6dd3527519"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  desc "Web browser"
  homepage "https://www.opera.com/computer/beta"

  livecheck do
    url "https://get.geo.opera.com/pub/opera-beta/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true

  app "Opera Beta.app"

  zap trash: [
    "~/Library/Application Support/com.operasoftware.OperaNext",
    "~/Library/Caches/com.operasoftware.OperaNext",
    "~/Library/Preferences/com.operasoftware.OperaNext.plist",
  ]
end
