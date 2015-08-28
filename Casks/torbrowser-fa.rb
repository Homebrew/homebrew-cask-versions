cask :v1 => 'torbrowser-fa' do
  version '5.0.2'
  sha256 'f9d26993384cf10791bb16a0d1a1a033f3a2161dd311589787d2551e2e0b2a7e'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
