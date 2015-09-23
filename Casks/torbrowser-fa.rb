cask :v1 => 'torbrowser-fa' do
  version '5.0.3'
  sha256 '5af13ce9f4d71195a204491ac30dea0a1cf75de41533fb2c3281fd7cbc3fb55d'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
