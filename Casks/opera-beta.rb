cask "opera-beta" do
  version "90.0.4480.30"
  sha256 "71b3def06fc78785ec5ae5c684cc97d87479c9f9d2a6c750091e355b433188d8"

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
