cask "opera-beta" do
  version "104.0.4944.10"
  sha256 "a18291795c73400ce2fa38c6c100e35e1f5e0ad6498665cad3f175edec333452"

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
