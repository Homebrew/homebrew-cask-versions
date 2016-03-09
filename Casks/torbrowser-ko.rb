cask 'torbrowser-ko' do
  version '5.5.3'
  sha256 'a613d94b6bf5c5e4e2d2a267876dcbe83716c2701bba049da17023153e8de56a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ko.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
