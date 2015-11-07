cask :v1 => 'torbrowser-it' do
  version '5.0.4'
  sha256 'ddcb89830d4aed59927f68349568e6db246b2cbf72b20ef92169ce6d5854ad88'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
