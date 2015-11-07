cask :v1 => 'torbrowser-nl' do
  version '5.0.4'
  sha256 'cc41902e1d73fdb249ecfcadeb38617e04e44c86b4e9cb709988bea335b0972a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
