cask :v1 => 'wireshark-dev' do
  version '1.99.6'
  sha256 'b73cb3684dd3270a6a4051dbb3feee284c37f87729a42448bd7016b498da494a'

  url "https://2.na.dl.wireshark.org/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  homepage 'http://www.wireshark.org'
  license :gpl

  pkg "Wireshark #{version} Intel 64.pkg"
  uninstall :pkgutil => 'org.wireshark.*'
end
