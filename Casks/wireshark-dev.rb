cask :v1 => 'wireshark-dev' do
  version '1.99.2'
  sha256 '8d05f1cdca29369f31762380fb655fe4cb837ad860b18ef6bf0384499a9e7104'

  url "https://2.na.dl.wireshark.org/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  homepage 'http://www.wireshark.org'
  license :unknown

  pkg "Wireshark #{version} Intel 64.pkg"
  uninstall :pkgutil => 'org.wireshark.*'
end
