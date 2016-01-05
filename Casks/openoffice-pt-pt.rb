cask 'openoffice-pt-pt' do
  version '4.1.2'
  sha256 '74941d0310000b95521d1a2019c2acecbb2a6177a6066cf34cb40e1915415faf'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/openofficeorg.mirror/#{version}/binaries/pt/Apache_OpenOffice_#{version}_MacOS_x86-64_install_pt.dmg"
  name 'Apache OpenOffice'
  homepage 'https://www.openoffice.org/pt/download/'
  license :apache

  app 'OpenOffice.app'
end
