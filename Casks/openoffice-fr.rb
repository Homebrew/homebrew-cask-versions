cask 'openoffice-fr' do
  version '4.1.2'
  sha256 '93486d9104321cbc2e1b8c3797cc6ae7f7507fd9108121f8d4ccc2b688f26d2b'

  # sourceforge.net/project/openofficeorg.mirror was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/project/openofficeorg.mirror/#{version}/binaries/fr/Apache_OpenOffice_#{version}_MacOS_x86-64_install_fr.dmg"
  name 'Apache OpenOffice'
  homepage 'https://www.openoffice.org/fr/Telecharger/'
  license :apache

  app 'OpenOffice.app'

  zap delete: '~/Library/Application Support/OpenOffice'
end
