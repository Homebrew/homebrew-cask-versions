cask :v1 => 'torbrowser-vi' do
  version '4.5.3'
  sha256 'e22c8f7658805c39da11b8dff70f161923479a9b8cd2a6b08789be011cc9d66a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
