cask "opera-beta" do
  version "97.0.4719.17"
  sha256 "8d6c0df2f0a05199246334aab238c1e9f230f85e0bfa43f8aa9d9af40e5ee3cf"

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
end
