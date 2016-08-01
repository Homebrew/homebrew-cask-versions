cask 'openoffice-pt-br' do
  version '4.1.2'
  sha256 '1c5b48ea7bbe0bff839bc391ca7c74f5f7ab68291b99614b40a7e640e386f9eb'

  # sourceforge.net/openofficeorg.mirror was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/openofficeorg.mirror/Apache_OpenOffice_#{version}_MacOS_x86-64_install_pt-BR.dmg"
  appcast 'https://sourceforge.net/projects/openofficeorg.mirror/rss',
          checkpoint: '391656f2987abb760223ad7da9d186cc2bee9903e4b0d1c4cf686f8cc011a944'
  name 'Apache OpenOffice'
  homepage 'https://www.openoffice.org/pt-br/'
  license :apache

  app 'OpenOffice.app'

  zap delete: '~/Library/Application Support/OpenOffice'
end
