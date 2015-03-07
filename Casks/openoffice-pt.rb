cask :v1 => 'openoffice-pt' do
  version '4.1.1'
  sha256 'b224515d21bc8826d92aba6cc18f044883b12ee6e401e7db0b6feb67f76aeedb'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/openofficeorg.mirror/#{version}/binaries/pt/Apache_OpenOffice_#{version}_MacOS_x86-64_install_pt.dmg"
  name 'OpenOffice'
  homepage 'http://www.openoffice.org/pt/download/'
  license :apache
  tags :vendor => 'Apache'

  app 'OpenOffice.app'
end
