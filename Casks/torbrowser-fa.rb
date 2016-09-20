cask 'torbrowser-fa' do
  version '6.0.5'
  sha256 'c752d17676730059b32db9fc4f89df5b3c7c0bcffb2e41a70ea5695dcd12d768'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
