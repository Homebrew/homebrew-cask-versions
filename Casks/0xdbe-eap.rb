cask :v1 => '0xdbe-eap' do
  version '143.324.5'
  sha256 '5a465fc906d1cb2c694f4ef1b3c138f1d882d0c35ad1a2b3db8e7600aef3e4df'

  url "https://download.jetbrains.com/dbe/0xdbe-#{version}-custom-jdk-bundled.dmg"
  name '0xDBE EAP'
  name '0xDBE'
  homepage 'https://confluence.jetbrains.com/display/DBE/0xDBE+1.0+EAP'
  license :commercial

  app '0xDBE EAP.app'

end
