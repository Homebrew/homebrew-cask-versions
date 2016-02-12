cask 'torbrowser-vi' do
  version '5.5.2'
  sha256 '36e26ade626c50aa206ac64448bdbc6917ed3de3375fc25589e7f3fc0710b774'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
