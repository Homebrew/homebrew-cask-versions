cask 'torbrowser-ko' do
  version '5.5.4'
  sha256 'd1e3286ca9e825827c96f1bd9b6be5f7babc184526576f1e10512ddada688bb3'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ko.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
