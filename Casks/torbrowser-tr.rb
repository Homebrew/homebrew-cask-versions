cask 'torbrowser-tr' do
  version '6.0.4'
  sha256 '6009d37c96e3080a8aa481480979baf990d371ca3164c195aeb8a2ab0dd83842'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
