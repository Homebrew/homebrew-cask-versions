cask 'torbrowser-fa' do
  version '6.0.4'
  sha256 'b3e6742aa03a8b3ebaae9642d3e0e83024134ca5ee8ba333b8c8ade387ed6dae'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
