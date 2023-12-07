cask "opera-beta" do
  version "106.0.4998.6"
  sha256 "90c004889363fb59d402fba72591705e67ef026fdfc6050a12c831d8810d27ec"

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
