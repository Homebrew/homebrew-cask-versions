cask :v1 => 'torbrowser-ru' do
  version '5.0.3'
  sha256 '62986d348b82d5a30f9f1cdc84b594990884e547f9bdecbafbc2028522b1b270'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ru.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
