cask 'torbrowser-nl' do
  version '6.0.3'
  sha256 '63011bad5d73a84f8d8fbd2de0f2acd845b6befd4d04cef9f960739ab2b8d48e'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
