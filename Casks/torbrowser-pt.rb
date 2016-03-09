cask 'torbrowser-pt' do
  version '5.5.3'
  sha256 '7f18a726e4e66f9e5a6efac2c8fa86feaac0297cc9d6f8c961370d814381b764'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pt-PT.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
