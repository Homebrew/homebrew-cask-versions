cask 'torbrowser-vi' do
  version '6.0.2'
  sha256 'd162f201efa3d9c5fd510848e48256172621a8d37c1e9719e6d6d8a8145670be'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
