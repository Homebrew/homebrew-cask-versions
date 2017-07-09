cask 'torbrowser-alpha' do
  version '7.5a2'
  sha256 '96410c354726a703883c7605fbd3d521cc951efe3b1403217b0039dd7b3cc458'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
