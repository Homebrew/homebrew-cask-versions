cask :v1 => 'wireshark-dev' do
  version '2.0.0rc1'
  sha256 '2a8ced7cd6c1788b46aa366d91dfbad144842fdfb09443a3b72d2dfec058783b'

  url "https://www.wireshark.org/download/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  homepage 'https://www.wireshark.org'
  license :gpl

  pkg "Wireshark #{version} Intel 64.pkg"
  uninstall :pkgutil => 'org.wireshark.*'
end
