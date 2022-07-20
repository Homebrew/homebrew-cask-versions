cask "opera-crypto-developer" do
  version "88.0.4412.64"
  sha256 "b6d6d83148d7bc3f4da7be1a8f2c1237e38dfdc9240083eba87ab84d88b7caf7"

  url "https://ftp.opera.com/pub/opera_crypto-developer/#{version}/mac/Opera_Crypto_Developer_#{version}_Setup.dmg"
  name "Opera Crypto Browser Developer"
  desc "Web3 browser"
  homepage "https://www.opera.com/crypto/next"

  livecheck do
    url "https://get.geo.opera.com/pub/opera_crypto-developer/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true

  app "Opera Crypto Developer.app"
end
