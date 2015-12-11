cask :v1 => '0xdbe-eap' do
  version '143.1301.4'
  sha256 'eefcf8b6e0d7aef9bbdada3282e6957f39da49a1fa5b56efc6bfe77325ede644'

  url "https://download.jetbrains.com/dbe/0xdbe-#{version}-custom-jdk-bundled.dmg"
  name '0xDBE EAP'
  name '0xDBE'
  homepage 'https://confluence.jetbrains.com/display/DBE/0xDBE+1.0+EAP'
  license :commercial

  app '0xDBE EAP.app'

end
