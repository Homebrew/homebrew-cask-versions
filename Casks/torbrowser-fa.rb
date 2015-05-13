cask :v1 => 'torbrowser-fa' do
  version '4.5.1'
  sha256 'faf5da971b676af179404fb384a4545d1d737d6ab14577440ba75e42ac9c84fd'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
