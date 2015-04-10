cask :v1 => 'torbrowser-pl' do
  version '4.0.8'
  sha256 '32e9b702bdd9c4334662d5917c7f16f8496b4cc823f162301328217a91459a7c'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_pl.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
