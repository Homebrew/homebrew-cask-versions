cask 'torbrowser-alpha' do
  version '7.0a3'
  sha256 '50a6f53fcde0aec8e9d5518bae0852757c67c616720cb486b9a4b1905df476a6'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
