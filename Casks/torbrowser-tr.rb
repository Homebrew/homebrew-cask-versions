cask :v1 => 'torbrowser-tr' do
  version '4.5.2'
  sha256 '75c242ae2be143e1ff30f68c91580e0ef9f5cc7866952412bc44dd88b0a9320a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
