cask :v1 => 'torbrowser-ru' do
  version '5.0.2'
  sha256 '7176ff88a12755a430b1ada680792a27c227db7b50c367370da941fe598ab517'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ru.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
