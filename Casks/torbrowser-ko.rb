cask 'torbrowser-ko' do
  version '6.0'
  sha256 '3b85a9ebfd1dbe8bedd2eb5e39011d586d5da26fb8a393f35624099066a29202'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ko.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
