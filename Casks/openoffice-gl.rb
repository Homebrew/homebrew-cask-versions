cask 'openoffice-gl' do
  version '4.1.2'
  sha256 'd92b8edb217e3c87287e67fdce07876e098ae4d75c760e5678d2beca9f6f7c60'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/openofficeorg.mirror/#{version}/binaries/gl/Apache_OpenOffice_#{version}_MacOS_x86-64_install_gl.dmg"
  name 'Apache OpenOffice'
  homepage 'http://www.openoffice.org/gl/Descargar/'
  license :apache

  app 'OpenOffice.app'
end
