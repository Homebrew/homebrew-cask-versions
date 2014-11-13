cask :v1 => 'phpstorm-eap' do
  version '139.173'
  sha256 '0815ca8237791fa41137aa27401d47a206d8f36ca4dd9fa7fdcc488ec96a7bdb'

  url "http://download.jetbrains.com/webide/PhpStorm-EAP-#{version}.dmg"
  homepage 'http://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'
  license :unknown

  app 'PhpStorm EAP.app'
end
