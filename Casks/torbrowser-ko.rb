cask 'torbrowser-ko' do
  version '6.0.4'
  sha256 '3348450e633d7fd2903f849366c5e33712ee44fae1a8bd32a5830fba1ab9ae23'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ko.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
