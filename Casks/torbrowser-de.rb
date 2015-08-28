cask :v1 => 'torbrowser-de' do
  version '5.0.2'
  sha256 'b578c0d1073d6ab029deb997ee7c6e626ac0c454726941521bcbf0c6abeab571'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
