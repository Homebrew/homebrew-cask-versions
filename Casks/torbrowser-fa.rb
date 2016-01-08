cask 'torbrowser-fa' do
  version '5.0.7'
  sha256 'd7c266358dbfbef5f91db15addf011bcb6eb0f269ee917c8f38ad3d45431a8f1'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
