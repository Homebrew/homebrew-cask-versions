cask 'torbrowser-nl' do
  version '6.0'
  sha256 '7fd312e76104a1e385e6538eea2bcc170966f9a80ac1d0159ffeffd3e384f8db'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
