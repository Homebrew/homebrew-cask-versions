cask :v1 => '0xdbe-eap' do
  version '143.898.1'
  sha256 '71a4a6db67b591d68cbb59d731e79496910e8e7714c203c5900ab1dc96fe5307'

  url "https://download.jetbrains.com/dbe/0xdbe-#{version}-custom-jdk-bundled.dmg"
  name '0xDBE EAP'
  name '0xDBE'
  homepage 'https://confluence.jetbrains.com/display/DBE/0xDBE+1.0+EAP'
  license :commercial

  app '0xDBE EAP.app'

end
