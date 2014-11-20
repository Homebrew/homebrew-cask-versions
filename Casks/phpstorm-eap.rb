cask :v1 => 'phpstorm-eap' do
  version '139.496'
  sha256 'a2d50ebfef75f28ad4e45b3f786de589472e59cea8848441fa156dfd64a60db4'

  url "http://download.jetbrains.com/webide/PhpStorm-EAP-#{version}.dmg"
  homepage 'http://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'
  license :unknown

  app 'PhpStorm EAP.app'
end
