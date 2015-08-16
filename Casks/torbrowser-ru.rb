cask :v1 => 'torbrowser-ru' do
  version '5.0'
  sha256 '94f5fa7bb3a2f4739376a2dfe9f23ce0145a8e747861107bd18b68ef681eac0e'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ru.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
