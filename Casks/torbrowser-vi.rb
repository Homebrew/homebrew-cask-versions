cask :v1 => 'torbrowser-vi' do
  version '4.5.1'
  sha256 '1aed6dbc4179fca6900e10824e3729b8e94eab732bf2236be8380379a187426b'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
