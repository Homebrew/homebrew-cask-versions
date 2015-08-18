cask :v1 => 'torbrowser-ru' do
  version '5.0.1'
  sha256 '45675b538edaf1bbdbf769a77142cebc0f5f843a4b7bb1776c800b10968ef946'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ru.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
