cask :v1 => '0xdbe-eap' do
  version '143.732.5'
  sha256 '97390a9c4f64c66e9c94cceb591e5c13e4381f50f06a76be90f875fa3bb282ac'

  url "https://download.jetbrains.com/dbe/0xdbe-#{version}-custom-jdk-bundled.dmg"
  name '0xDBE EAP'
  name '0xDBE'
  homepage 'https://confluence.jetbrains.com/display/DBE/0xDBE+1.0+EAP'
  license :commercial

  app '0xDBE EAP.app'

end
