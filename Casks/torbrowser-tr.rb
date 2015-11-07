cask :v1 => 'torbrowser-tr' do
  version '5.0.4'
  sha256 'd4d17264268341f8e5013c2bf38760690139499f4b8acb82fcf59a66606432c4'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
