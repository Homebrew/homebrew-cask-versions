cask :v1 => 'wireshark-dev' do
  version '1.99.8'
  sha256 'a6d2c14b74bfb27d3cf69ddda3919ace7b56facc7a9f6b3959ad630667ead240'

  url "https://2.na.dl.wireshark.org/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  homepage 'http://www.wireshark.org'
  license :gpl

  pkg "Wireshark #{version} Intel 64.pkg"
  uninstall :pkgutil => 'org.wireshark.*'
end
