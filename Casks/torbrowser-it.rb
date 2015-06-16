cask :v1 => 'torbrowser-it' do
  version '4.5.2'
  sha256 'b73cf0dd55955fc730e285735ecd074aaed7f82990234c171487a46561566c6d'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
