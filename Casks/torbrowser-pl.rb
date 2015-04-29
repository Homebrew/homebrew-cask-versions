cask :v1 => 'torbrowser-pl' do
  version '4.5'
  sha256 '133e9e11be4e0ba48cc42cfc3929a9fd18073467a7a7dbaa0f0e61952458b2cb'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
