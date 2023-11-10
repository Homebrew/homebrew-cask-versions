cask "opera-beta" do
  version "105.0.4970.10"
  sha256 "0f80b438e88dcdbf5333bc9f02d7957c0fee9002ed0444e64bd7795383ef4571"

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
