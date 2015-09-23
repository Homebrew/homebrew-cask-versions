cask :v1 => 'torbrowser-tr' do
  version '5.0.3'
  sha256 '9363e252cee1a783a85dbdb000fc403da57cf2e32d63cf60d4e6f8a508e4bec4'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
