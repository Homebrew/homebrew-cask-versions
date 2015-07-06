cask :v1 => 'torbrowser-tr' do
  version '4.5.3'
  sha256 '00a970ea5d95c45066f6cc30b7a6c2b9e2c5b876f95d2bfe25bdad130d9cd62a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
