cask :v1 => 'torbrowser-pl' do
  version '4.5.1'
  sha256 'b2f7170a454d74a4afc2c9fca1cce99a27fe38804d39fbc4a1b42cb84d0f9877'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
