cask :v1 => 'wireshark-dev' do
  version '1.99.0'
  sha256 '76f5f86cfda5874f6c72be4047b7daee593b73117190da884739bc10508e9a27'

  url "http://www.wireshark.org/download/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  homepage 'http://www.wireshark.org'
  license :unknown

  pkg "Wireshark #{version} Intel 64.pkg"
  uninstall :pkgutil => 'org.wireshark.*'
end
