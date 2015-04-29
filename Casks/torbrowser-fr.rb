cask :v1 => 'torbrowser-fr' do
  version '4.5'
  sha256 '85c415c4fab398aaaff204343c3a05b447dbafccf1fbbc2a61f5f83a76b329d1'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
