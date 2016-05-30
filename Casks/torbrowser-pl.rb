cask 'torbrowser-pl' do
  version '6.0'
  sha256 '9748325e77104c4dd90eb9a0ca8d87072760cdde3d67b8b6c924332671ad705e'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
