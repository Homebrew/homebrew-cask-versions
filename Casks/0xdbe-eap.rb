cask :v1 => '0xdbe-eap' do
  version '143.1040.1'
  sha256 '8e268d54ebb946b4d9c52d05a0d0f41a7a22ce45cc068580ae3bda39b547533d'

  url "https://download.jetbrains.com/dbe/0xdbe-#{version}-custom-jdk-bundled.dmg"
  name '0xDBE EAP'
  name '0xDBE'
  homepage 'https://confluence.jetbrains.com/display/DBE/0xDBE+1.0+EAP'
  license :commercial

  app '0xDBE EAP.app'

end
