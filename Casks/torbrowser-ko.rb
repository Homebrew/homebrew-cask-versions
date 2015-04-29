cask :v1 => 'torbrowser-ko' do
  version '4.5'
  sha256 '30d0a51e92a2dbd045dd4e08d7aefad364df38a9b081a7423a868070c625998d'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ko.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
