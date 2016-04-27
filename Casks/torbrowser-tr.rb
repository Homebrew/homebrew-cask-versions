cask 'torbrowser-tr' do
  version '5.5.5'
  sha256 '3a14eaf9e1d15ecab7126932ac2f6e1912c291ef65177e77c626135ec7524f82'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
