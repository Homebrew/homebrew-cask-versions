cask :v1 => 'torbrowser-pl' do
  version '5.0'
  sha256 'cb4cfd1269d7a8ce052dade8866acae355209dd9d25e357971ec1518d027d34f'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
