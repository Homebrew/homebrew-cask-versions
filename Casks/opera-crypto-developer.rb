cask "opera-crypto-developer" do
  version "88.0.4412.11"
  sha256 "58fd80998ed34fd0ff9ef5df640d852ff1d12b48337748f7688913c28c123f12"

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
