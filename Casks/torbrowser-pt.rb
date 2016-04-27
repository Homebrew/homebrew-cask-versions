cask 'torbrowser-pt' do
  version '5.5.5'
  sha256 '2cef6ce322e672902d0b173365a7ff97eb32527c550ed7d37cdc4c50554e98b0'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pt-PT.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
