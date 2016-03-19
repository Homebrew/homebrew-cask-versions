cask 'torbrowser-it' do
  version '5.5.4'
  sha256 'b24e7ba7e880d83c3273b9096f9714fc89735e52b92d461aa237f760ae075215'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
