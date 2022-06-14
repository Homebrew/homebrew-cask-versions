cask "opera-crypto-developer" do
  version "88.0.4412.37"
  sha256 "dab91bbf73fe6938fa01b1b58bab2142c2abb01628c6b734397afd3dbe5ec867"

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
