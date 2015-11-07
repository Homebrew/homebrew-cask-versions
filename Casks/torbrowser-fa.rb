cask :v1 => 'torbrowser-fa' do
  version '5.0.4'
  sha256 '41c6df00b1a7879a77fcfd5fb39c402520a74927cb490c0fa0014f9aa53dcc15'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
