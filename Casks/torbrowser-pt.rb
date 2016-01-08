cask 'torbrowser-pt' do
  version '5.0.7'
  sha256 '8ee3d70088093cd64e41f2c5531e6f5bc73bfa346083c8340ef8db08508f03d9'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pt-PT.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
