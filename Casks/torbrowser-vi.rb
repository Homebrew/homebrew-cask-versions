cask :v1 => 'torbrowser-vi' do
  version '5.0.3'
  sha256 '51d1ddaacaa55b9ec45cf24c2c208c162aa235eaac32c095ae283c5b180a332c'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
