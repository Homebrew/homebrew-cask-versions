cask :v1 => 'openoffice-fr' do
  version '4.1.1'
  sha256 '4e1fb74fbb6b714c49b7a0f82646c25a2ee749459f44fc2624b8220e7c256c23'

  url "http://downloads.sourceforge.net/project/openofficeorg.mirror/#{version}/binaries/fr/Apache_OpenOffice_#{version}_MacOS_x86-64_install_fr.dmg"
  homepage 'https://www.openoffice.org/fr/Telecharger/'
  license :oss

  app 'OpenOffice.app'
end
