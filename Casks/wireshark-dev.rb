cask :v1 => 'wireshark-dev' do
  version '1.99.9'
  sha256 'b936f35e6a83112b95d6ed512650ae2d0fb4a5fd9a639c783119e1baaf394973'

  url "https://2.na.dl.wireshark.org/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  homepage 'https://www.wireshark.org'
  license :gpl

  pkg "Wireshark #{version} Intel 64.pkg"
  uninstall :pkgutil => 'org.wireshark.*'
end
