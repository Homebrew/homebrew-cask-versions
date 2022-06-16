cask "opera-beta" do
  version "89.0.4447.12"
  sha256 "9f8ab52e14cdd9bf22aad475c7ed83aa9a05665bf1ae64e05daf76fd0ddf6040"

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
