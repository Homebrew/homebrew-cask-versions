cask :v1 => 'torbrowser-nl' do
  version '4.5.1'
  sha256 '4e754dc76b95c65a8fb1674c20f8aff09ed220349ed05c7cfc30463de030b49a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
