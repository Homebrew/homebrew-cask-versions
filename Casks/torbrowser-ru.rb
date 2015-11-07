cask :v1 => 'torbrowser-ru' do
  version '5.0.4'
  sha256 'b770a70b1d58acf38598bc20a3d570fd9000393a4c0985d155aab64e099b457b'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ru.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
