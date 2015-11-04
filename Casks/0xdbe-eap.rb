cask :v1 => '0xdbe-eap' do
  version '143.615.4'
  sha256 'bd53c5be436b39fd70984544ff76f57b8f050a01923f327b0ad1f52ff038a27d'

  url "https://download.jetbrains.com/dbe/0xdbe-#{version}-custom-jdk-bundled.dmg"
  name '0xDBE EAP'
  name '0xDBE'
  homepage 'https://confluence.jetbrains.com/display/DBE/0xDBE+1.0+EAP'
  license :commercial

  app '0xDBE EAP.app'

end
