cask 'torbrowser-vi' do
  version '6.0.3'
  sha256 'ddaf61b3cdac6f733f40c4f55e8d5a2b4302bf9d62c5a3bd9092066490367827'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
