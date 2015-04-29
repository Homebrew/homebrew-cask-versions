cask :v1 => 'torbrowser-de' do
  version '4.5'
  sha256 'f0f421d87512140adbbff5de64ff27837fdd52678e9a11776112204f4009c7e1'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
