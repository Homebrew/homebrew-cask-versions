cask :v1 => 'torbrowser-vi' do
  version '5.0'
  sha256 '2af07904f9d7b7be78c0fa4f89748f26406897a3eb21019226251d240abd768a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
