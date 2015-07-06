cask :v1 => 'torbrowser-it' do
  version '4.5.3'
  sha256 '2e10be93a027e2bf53bf2b8199458411001162a4e135766107f1a926a051a68e'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
