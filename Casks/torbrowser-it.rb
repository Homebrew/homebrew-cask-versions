cask 'torbrowser-it' do
  version '6.0.2'
  sha256 '7883db7e1bc2139584ebd6ebbd8783f9574eb973755bcf22e32d8c56c96c67d6'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
