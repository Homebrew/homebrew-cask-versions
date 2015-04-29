cask :v1 => 'torbrowser-it' do
  version '4.5'
  sha256 '2a62042a594c346fb7c565aa4661a475373cc310859c004e40e7a0f621a4b53f'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
