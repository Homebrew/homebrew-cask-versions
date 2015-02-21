cask :v1 => 'openoffice-gl' do
  version '4.1.1'
  sha256 'a41bcfbd6aeaf86c65ec27db78ad0fa8e93482dbc75336557fed7a42c8234d37'

  url "http://downloads.sourceforge.net/project/openofficeorg.mirror/#{version}/binaries/gl/Apache_OpenOffice_#{version}_MacOS_x86-64_install_gl.dmg"
  homepage 'http://www.openoffice.org/gl/Descargar/'
  license :oss

  app 'OpenOffice.app'
end
