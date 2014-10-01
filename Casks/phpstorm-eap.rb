class PhpstormEap < Cask
  version '138.2502'
  sha256 '61c1872a4e487f955956cba93eb8a2f5f743c8dd1aff1eac1c96555b306cdb81'

  url "http://download.jetbrains.com/webide/PhpStorm-EAP-#{version}.dmg"
  homepage 'http://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'

  app 'PhpStorm EAP.app'
end
