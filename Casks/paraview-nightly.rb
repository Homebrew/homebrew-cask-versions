cask 'paraview-nightly' do
  version '4.4.0-297-g4780cde'
  sha256 '292a8336bf7d1960183498f958bf2c5942d8127800faf7236827dfbdf1411ebc'

  url "http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=nightly&type=all&os=all&downloadFile=ParaView-#{version}-Qt4-OpenGL2-OSX10.7-64bit.dmg"
  name 'ParaView'
  homepage 'http://www.paraview.org/'
  license :bsd

  app 'paraview.app'
end
