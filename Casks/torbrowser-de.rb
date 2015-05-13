cask :v1 => 'torbrowser-de' do
  version '4.5.1'
  sha256 '48942dca848a16a940f7923d94a38eb90945be5979dbd293e96a1bccc3377331'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
