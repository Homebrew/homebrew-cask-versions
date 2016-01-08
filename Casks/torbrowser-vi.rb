cask 'torbrowser-vi' do
  version '5.0.7'
  sha256 'b25ef10c19b409bdd5e1ecb2a705b21656f50b345e5672aaf04dba519b238e71'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
