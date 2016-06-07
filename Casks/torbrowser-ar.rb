cask 'torbrowser-ar' do
  version '6.0.1'
  sha256 '6ea9d772a75d18d24e29eb3be0464c3e47c4102bd9ce5eb695f1b282e633743a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ar.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
