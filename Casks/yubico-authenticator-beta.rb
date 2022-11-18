cask "yubico-authenticator-beta" do
  version "6.0.0-beta.1"
  sha256 "d7fb7862453ccea3e2ae66b9c7e10b0eec4e767276514bd0c9a56110fe99a4b2"

  url "https://developers.yubico.com/yubioath-flutter/Releases/yubico-authenticator-latest-mac.dmg"
  name "Yubico Authenticator Beta"
  desc "Application for generating TOTP and HOTP codes"
  homepage "https://www.yubico.com/products/yubico-authenticator/yubico-authenticator-desktop-beta/"

  livecheck do
    url :homepage
    regex(/yubioath[._-]desktop[._-]v?(\d+(?:\.\d+)*-beta(?:\.\d+)*)[._-]mac\.dmg/i)
  end

  # Renamed to avoid conflict with yubico-authenticator.
  app "Yubico Authenticator.app", target: "Yubico Authenticator Beta.app"
end
