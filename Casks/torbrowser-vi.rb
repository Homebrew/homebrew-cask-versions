cask 'torbrowser-vi' do
  version '6.0.1'
  sha256 '0ee02d8313acad5b7a228261354e3adcaddbb5148284fbb7c036468043472d0a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
