cask :v1 => 'torbrowser-es' do
  version '5.0.1'
  sha256 '2e18162a771cf7c1521a4000629bc8f3f0329ccbd9e630589983979941348fd4'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_es-ES.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
