cask 'torbrowser-vi' do
  version '6.0.5'
  sha256 'f2a8c9cc43727d44916aab74bdebeb43d66b5264e23ea900168f61988fc5e838'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
