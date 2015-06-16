cask :v1 => 'torbrowser-de' do
  version '4.5.2'
  sha256 '042d2bdec7447799ae6f7da7a6ec476b00e8c5d6ece0b32d5ca1255c59667272'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
