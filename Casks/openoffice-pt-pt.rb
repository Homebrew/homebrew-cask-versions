cask 'openoffice-pt-pt' do
  version '4.1.2'
  sha256 '74941d0310000b95521d1a2019c2acecbb2a6177a6066cf34cb40e1915415faf'

  # sourceforge.net/openofficeorg.mirror was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/openofficeorg.mirror/#{version}/binaries/pt/Apache_OpenOffice_#{version}_MacOS_x86-64_install_pt.dmg"
  appcast 'https://sourceforge.net/projects/openofficeorg.mirror/rss',
          checkpoint: '391656f2987abb760223ad7da9d186cc2bee9903e4b0d1c4cf686f8cc011a944'
  name 'Apache OpenOffice'
  homepage 'https://www.openoffice.org/pt/download/'

  app 'OpenOffice.app'
end
