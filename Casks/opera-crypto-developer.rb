cask "opera-crypto-developer" do
  version "90.0.4480.128"
  sha256 "f70e9b6a0e99799d4e1d28e9f4f0e66958e74d0c360a915fe25b8b9db4cb2341"

  url "https://ftp.opera.com/pub/opera_crypto-developer/#{version}/mac/Opera_Crypto_#{version}_Setup.dmg"
  name "Opera Crypto Browser Developer"
  desc "Web3 browser"
  homepage "https://www.opera.com/crypto/next"

  livecheck do
    url "https://get.geo.opera.com/pub/opera_crypto-developer/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true

  app "Opera Crypto.app"
end
