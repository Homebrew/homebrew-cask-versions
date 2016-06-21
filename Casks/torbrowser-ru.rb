cask 'torbrowser-ru' do
  version '6.0.2'
  sha256 '4f6d0b17a19655e8f631da09884ecfc0cdb60c9ca8766e225e1deeb4a3248018'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ru.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
