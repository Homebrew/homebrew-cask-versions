cask "3dxware-beta" do
  version "10-7-0_r3386"
  sha256 "bebd9c01c96bfb9411fd5b4ccd2bbba3b798cba001b0e200547d0e9c3dcbf893"

  url "https://download.3dconnexion.com/drivers/technical_support/3DxWareMac_v#{version}.dmg"
  name "3dxware"
  desc "Driver for all 3Dconnexion products"
  homepage "https://3dconnexion.com/de/product/3dxware-10/"

  pkg "Install\ 3Dconnexion\ software.pkg"

  uninstall script: "/Applications/3Dconnexion/Uninstall\ 3Dconnexion\ Driver.app/Contents/MacOS/Uninstall\ 3Dconnexion\ Driver"
end
