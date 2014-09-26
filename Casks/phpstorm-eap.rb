class PhpstormEap < Cask
  version '138.2071'
  sha256 'f0c52920fdce0ca3f1001342e816e5283c3efe502a1b0d39667332b4afeced87'

  url "http://download.jetbrains.com/webide/PhpStorm-EAP-#{version}.dmg"
  homepage 'http://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'

  app 'PhpStorm EAP.app'
end
