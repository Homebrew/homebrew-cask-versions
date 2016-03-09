cask 'torbrowser-ru' do
  version '5.5.3'
  sha256 '01768718d71c69e96d1c76603a85561883acf030d4ef7e86ee7079fb441b76e4'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ru.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
