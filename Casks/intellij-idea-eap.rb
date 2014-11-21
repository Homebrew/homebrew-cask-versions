cask :v1 => 'intellij-idea-eap' do
  version '139.463.4'
  sha256 '9c121f506136f9c658fe3246c6f69947d67184d523c8a3fdaf94e5065b80a918'

  url "http://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+14+EAP'
  license :commercial

  app 'IntelliJ IDEA 14 EAP.app'
end
