cask 'torbrowser-tr' do
  version '5.5.3'
  sha256 '6bd93fd0e515b8dd6f85b221f06d4886ad7fb0d84d07fb369acfe835f4befd80'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
