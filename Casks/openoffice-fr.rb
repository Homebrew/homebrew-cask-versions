class OpenofficeFr < Cask
  version '4.0.1'
  sha256 'e8d61fe93acf484c564ddc44638f314cdaa2c6e99d6a055386df9d9e3d0e6e6d'

  url "http://downloads.sourceforge.net/project/openofficeorg.mirror/#{version}/binaries/fr/Apache_OpenOffice_#{version}_MacOS_x86_install_fr.dmg"
  homepage 'http://www.openoffice.org/fr/Telecharger/'

  app 'OpenOffice.app'
end
