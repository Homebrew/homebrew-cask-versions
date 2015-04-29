cask :v1 => 'torbrowser-ru' do
  version '4.5'
  sha256 '2bad98adaeef9beab8c47cb6e881efba0f865184a8f51ae04410f8d46f9d1891'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ru.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
