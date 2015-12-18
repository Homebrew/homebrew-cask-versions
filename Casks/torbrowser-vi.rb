cask 'torbrowser-vi' do
  version '5.0.5'
  sha256 '446cdd4731fcb8a681f94f826527d306ff976c0f697be90ea06b2ff383c7a14d'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
