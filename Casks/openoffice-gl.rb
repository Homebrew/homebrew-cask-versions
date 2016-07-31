cask 'openoffice-gl' do
  version '4.1.2'
  sha256 'd92b8edb217e3c87287e67fdce07876e098ae4d75c760e5678d2beca9f6f7c60'

  # sourceforge.net/openofficeorg.mirror was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/openofficeorg.mirror/#{version}/binaries/gl/Apache_OpenOffice_#{version}_MacOS_x86-64_install_gl.dmg"
  appcast 'https://sourceforge.net/projects/openofficeorg.mirror/rss',
          checkpoint: '391656f2987abb760223ad7da9d186cc2bee9903e4b0d1c4cf686f8cc011a944'
  name 'Apache OpenOffice'
  homepage 'https://www.openoffice.org/gl/'
  license :apache

  app 'OpenOffice.app'
end
