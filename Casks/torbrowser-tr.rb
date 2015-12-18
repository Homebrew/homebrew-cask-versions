cask 'torbrowser-tr' do
  version '5.0.5'
  sha256 '36c62cf82ac78d84b3407b0dae555419f3cf2242f773841cba22f2672dd1abef'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
