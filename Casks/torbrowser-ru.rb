cask 'torbrowser-ru' do
  version '5.5.1'
  sha256 '60ffd0b143ce41dfee923b7d4de8dedcc19611944183296966b1e304bed9bb85'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ru.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
