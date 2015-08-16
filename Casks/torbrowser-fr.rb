cask :v1 => 'torbrowser-fr' do
  version '5.0'
  sha256 '0b26ece08668136914f28aebb677d8f76a59a66d32781737cbc0c1b31a42c85a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fr.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
