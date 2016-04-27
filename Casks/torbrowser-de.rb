cask 'torbrowser-de' do
  version '5.5.5'
  sha256 'a8572489c5b55c178acc0ffa5956aced7e385f2edd08968ec0195f486b0beff5'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
