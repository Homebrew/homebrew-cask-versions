cask 'torbrowser-ru' do
  version '6.0.5'
  sha256 '1f979d868335ac737f286a349c5c72ef2eb99e42b023751da9a6970af17b9710'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ru.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
