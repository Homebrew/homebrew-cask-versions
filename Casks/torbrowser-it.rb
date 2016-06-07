cask 'torbrowser-it' do
  version '6.0.1'
  sha256 'da089369b50bf2f8020ed8c1241520b5896c7022a375d96a4a3a69cd058a8300'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
