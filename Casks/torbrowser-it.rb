cask :v1 => 'torbrowser-it' do
  version '5.0'
  sha256 '019b069338b5a349fb207a631360d9b09150f91f7c5d0fe2a8f0c4bd03d7ba4b'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_it.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
