cask :v1 => 'torbrowser-de' do
  version '4.0.8'
  sha256 'ae8b4574cd937b96e2ba4826a44c5a0cdb890e9ed91e9feb18e3736257bce9c1'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_de.dmg"
  gpg "#{url}.asc",
      :key_id => '4e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
