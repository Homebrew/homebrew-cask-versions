cask 'torbrowser-pt' do
  version '5.5.2'
  sha256 '4ea61c6420a1d8778c5e6a8f17c2abc9c0aeb489fed42956928e938762dedac7'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pt-PT.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
