cask :v1 => 'torbrowser-pl' do
  version '5.0.3'
  sha256 'cc10cc6f15fca493866d3b7cadcaa1cdd14419e5922bb000ba0b88489b99c71f'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pl.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
