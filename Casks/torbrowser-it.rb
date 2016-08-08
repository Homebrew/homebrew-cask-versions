cask 'torbrowser-it' do
  version '6.0.3'
  sha256 '2ec6d0e0af3b200de7f7ca38b0c87cc2386e742414af9769503100ca59707172'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
