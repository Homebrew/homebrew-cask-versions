cask :v1 => 'torbrowser-ko' do
  version '5.0.2'
  sha256 '55cf3079d649279dc12189917755f5355e697d689f03330c6fd755b6f6715b8c'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ko.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
