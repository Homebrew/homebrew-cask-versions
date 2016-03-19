cask 'torbrowser-vi' do
  version '5.5.4'
  sha256 'a71bbfaa2fb738a88d18b1b4b5d693a4941d4e5c7e7b5b9a486c2d8b87ddae85'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
