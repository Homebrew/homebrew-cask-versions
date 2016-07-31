cask 'openoffice-fr' do
  version '4.1.2'
  sha256 '93486d9104321cbc2e1b8c3797cc6ae7f7507fd9108121f8d4ccc2b688f26d2b'

  # sourceforge.net/openofficeorg.mirror was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/openofficeorg.mirror/#{version}/binaries/fr/Apache_OpenOffice_#{version}_MacOS_x86-64_install_fr.dmg"
  appcast 'https://sourceforge.net/projects/openofficeorg.mirror/rss',
          checkpoint: '391656f2987abb760223ad7da9d186cc2bee9903e4b0d1c4cf686f8cc011a944'
  name 'Apache OpenOffice'
  homepage 'https://www.openoffice.org/fr/'
  license :apache

  app 'OpenOffice.app'

  zap delete: '~/Library/Application Support/OpenOffice'
end
