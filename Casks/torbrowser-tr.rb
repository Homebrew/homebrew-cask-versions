cask 'torbrowser-tr' do
  version '5.5.1'
  sha256 '1a523dcf64059f67fa38949566e08e1e4c9da551d5349b2a9ec1e9540c8f50dd'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
