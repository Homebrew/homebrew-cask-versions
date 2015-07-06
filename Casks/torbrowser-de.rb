cask :v1 => 'torbrowser-de' do
  version '4.5.3'
  sha256 '21449f1686ec690da491f8881c9792c8dd8fd7a1fdaf7c8b2b04f7ab8aa64f8a'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_de.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
