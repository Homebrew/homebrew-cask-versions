cask 'torbrowser-vi' do
  version '6.0'
  sha256 'd25367a3b118a4dbf0f3f9550c789826ebc6cca1c41dbd325c78ab76aa37d54f'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
