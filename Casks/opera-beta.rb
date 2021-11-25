cask "opera-beta" do
  version "82.0.4227.13"
  sha256 "a792ea3d3dbcfb445fc76a0b1b5c591b7b8e6f9678c43e78bf4451c8a4678e47"

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
