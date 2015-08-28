cask :v1 => 'torbrowser-ar' do
  version '5.0.2'
  sha256 '61c8c610c13742ef3793ac0a327b1a8320d9eb5702626c573010ec55762371a2'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ar.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
