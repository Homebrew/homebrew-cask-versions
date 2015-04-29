cask :v1 => 'torbrowser-fa' do
  version '4.5'
  sha256 '5d46931da89399c6c87b7afa8da4a9f381a698e3c4b51541929eec35de40e282'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
