cask 'torbrowser-nl' do
  version '6.0.4'
  sha256 '91d01ef57da77dcf03487037c1d4d138263d4b8b586b33d8f40573f08e207b39'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
