class OperaDeveloper < Cask
  version '20.0.1353.0'
  sha256 '13aab747e6634140361a50fcecc1ac33e3944e113d0bf724246e3d75e9f9a409'

  url "http://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  homepage 'http://www.opera.com/developer'
  license :unknown

  app 'Opera Developer.app'
end
