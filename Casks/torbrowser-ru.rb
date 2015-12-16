cask :v1 => 'torbrowser-ru' do
  version '5.0.5'
  sha256 '356ce93bef4fbbe47c34c4e900de9369a45dc558c139385ce08ac66bd38a39f9'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ru.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
