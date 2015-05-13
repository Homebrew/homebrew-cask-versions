cask :v1 => 'torbrowser-ru' do
  version '4.5.1'
  sha256 '96b39fe5152ca286f405b91095c580c410ca36432949a323de6f1c4dde3f45cb'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ru.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
