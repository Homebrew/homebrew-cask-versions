cask 'torbrowser-ko' do
  version '6.0.3'
  sha256 '4e1ed24e69b7fed382f429dc770a889524c0ff83fd432222261c7b86daa1cbdf'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ko.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
