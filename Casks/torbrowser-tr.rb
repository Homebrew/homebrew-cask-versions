cask 'torbrowser-tr' do
  version '6.0.2'
  sha256 'bc8cbf39d39bb5d4431a5354a14dcee790d9915e5097c0605cfd49d7e5362c24'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
