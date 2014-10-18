class PhpstormEap < Cask
  version '139.105'
  sha256 '9821ed1d1728fdcc833e896d7f2802643edd1707'

  url "http://download.jetbrains.com/webide/PhpStorm-EAP-#{version}.dmg"
  homepage 'http://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'
  license :unknown

  app 'PhpStorm EAP.app'
end
