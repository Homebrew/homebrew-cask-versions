cask :v1 => 'torbrowser-ar' do
  version '4.5.2'
  sha256 '876936ba90d87d5cf3d9adc28f204bdeba2ee0d20c395268e29b60ee7a3e11d2'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ar.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
