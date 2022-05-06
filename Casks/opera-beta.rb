cask "opera-beta" do
  version "87.0.4390.17"
  sha256 "f95c38ea6f80c014a5c96c92ba01f642f27e5563b8989e322d8eca75896e8e30"

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
