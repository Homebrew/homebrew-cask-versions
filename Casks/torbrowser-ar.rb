cask 'torbrowser-ar' do
  version '5.5.4'
  sha256 '687636cf31ddd91e757bd6183aad9a4653b73618afd4bb5dd3c5f4b71b656acb'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ar.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
