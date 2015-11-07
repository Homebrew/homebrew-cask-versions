cask :v1 => 'torbrowser-vi' do
  version '5.0.4'
  sha256 'fce0e865b44763d2bd4724872645f3bb7131c6f6054fdeb8370831cb234eb1e0'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
