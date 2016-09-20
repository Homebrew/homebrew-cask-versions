cask 'torbrowser-ja' do
  version '6.0.5'
  sha256 '6451028769dd8b8983f8f651cef540dad7f0d8d286bcee30ea33fd50d07947b2'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ja.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
