cask :v1 => 'torbrowser-pt' do
  version '4.5.3'
  sha256 '123ba38410caf11b833ce69ef2e1c7bef9b9091dfdf914776562f1bf44aed23f'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pt-PT.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
