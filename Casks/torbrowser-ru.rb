cask 'torbrowser-ru' do
  version '5.5.5'
  sha256 '5c15ea645edf04cf2b63139be0f93796adc96bb6070253a33c427c9976e7894a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ru.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
