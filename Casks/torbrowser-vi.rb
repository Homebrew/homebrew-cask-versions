cask :v1 => 'torbrowser-vi' do
  version '4.5.2'
  sha256 '9acc4b734aca96037a34fb069eb6f2591a4733a93e3608acfdfbbf1c6eefd523'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
