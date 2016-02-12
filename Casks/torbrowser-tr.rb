cask 'torbrowser-tr' do
  version '5.5.2'
  sha256 'c29e12d451311cb600c9ebf24fa00b4cc45a7fe1105e60d141ba5509d333ed9f'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
