cask :v1 => 'torbrowser-fa' do
  version '5.0'
  sha256 'c887aa04056fc5ef0e7142f3cd42ec31ae8b3479ee53a32cb66306c85cb378cb'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
