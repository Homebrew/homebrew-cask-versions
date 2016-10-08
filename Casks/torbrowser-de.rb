cask 'torbrowser-de' do
  version '6.0.4'
  sha256 '322a1891c1e3f2d6377524928b3c72620b98d102185042e65efadd534c14a048'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
