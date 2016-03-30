cask 'torbrowser-ja' do
  version '5.5.4'
  sha256 'dc5451b5760f93a5b59a4e0ce002a32b182421348a07fb3a51f95ce817c5a8d1'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ja.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
