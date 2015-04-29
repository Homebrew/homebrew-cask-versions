cask :v1 => 'torbrowser-tr' do
  version '4.5'
  sha256 '9cf139c9f9a545ade63a79faad49067462d54e8e056b81a7c5fc60036db8b5a5'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
