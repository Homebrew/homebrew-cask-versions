cask :v1 => 'torbrowser-fa' do
  version '5.0.1'
  sha256 '743145e070df283e38bd29fecbefbdf70165cbfeb8a2f8809c9e237be203dbec'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
