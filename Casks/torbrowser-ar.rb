cask 'torbrowser-ar' do
  version '5.0.5'
  sha256 '8cba53ac384c628c2230a4aa20e809bab340f75d9b2aa48bfc69e60a11d8c42a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ar.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
