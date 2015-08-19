cask :v1 => 'torbrowser-ar' do
  version '5.0.1'
  sha256 '9de85bfbef849918d9d40c0b401b9592bcd80dd222fda91acf93ea804bc6de99'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ar.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
