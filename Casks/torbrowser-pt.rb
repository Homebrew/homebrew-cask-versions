cask :v1 => 'torbrowser-pt' do
  version '5.0.1'
  sha256 'fc7aaa4f52e74543cdb3f32d8d754fc883751ab7de6d1779028f1feb4a4a2db4'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pt-PT.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
