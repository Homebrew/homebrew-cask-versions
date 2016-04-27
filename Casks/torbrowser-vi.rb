cask 'torbrowser-vi' do
  version '5.5.5'
  sha256 '97506c751a9f30ec6e4df5efc02ff2a8067458f4f95d924d9d622ab389528051'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
