cask 'torbrowser-pt' do
  version '6.0.1'
  sha256 'c6988368effc894ae2f1bb1cc959a4d85919ebb7ff077a65abc357d11a6f4e6c'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pt-PT.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
