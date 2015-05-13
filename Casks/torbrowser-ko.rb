cask :v1 => 'torbrowser-ko' do
  version '4.5.1'
  sha256 '44734cbb0423626b9d1b33aecea206fd1fc005dfd59192c201fceb482204c682'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ko.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
