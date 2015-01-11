cask :v1 => 'wireshark-dev' do
  version '1.99.1'
  sha256 '493d4fc48c60898f6bced96eeb0b1e340c9ca28b07bbced04ed69e553f16713f'

  url "http://www.wireshark.org/download/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  homepage 'http://www.wireshark.org'
  license :unknown

  pkg "Wireshark #{version} Intel 64.pkg"
  uninstall :pkgutil => 'org.wireshark.*'
end
