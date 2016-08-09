cask 'torbrowser-ja' do
  version '6.0.3'
  sha256 '02b4d6c1570e23368ca6f32b3a420f98390ca3554785a466f564a27cba975947'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ja.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
