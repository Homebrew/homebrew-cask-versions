cask 'freecad-pre' do
  version '0.18-15525.1a7d3d9'
  sha256 '8c739a111482d640f7e9916429d767a084cacbb1db405c16e27688249e39627b'

  # github.com/FreeCAD/FreeCAD was verified as official when first introduced to the cask
  url "https://github.com/FreeCAD/FreeCAD/releases/download/#{version.split('-')[0]}_pre/FreeCAD_#{version}-OSX-x86_64-Qt5-Py3.dmg"
  appcast 'https://github.com/FreeCAD/FreeCAD/releases.atom'
  name 'FreeCAD'
  homepage 'https://www.freecadweb.org/'

  app 'FreeCAD.app'
end
