cask :v1 => 'torbrowser-de' do
  version '5.0.5'
  sha256 'c632af859ce8a8ab655dc1db7efa31ee478a39e04c4940f9f62563ee61d58adf'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
