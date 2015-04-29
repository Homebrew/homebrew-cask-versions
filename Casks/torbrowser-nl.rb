cask :v1 => 'torbrowser-nl' do
  version '4.5'
  sha256 'ed351f032d93b8cdb4e2e4d4af6ee6ca400864b8e7e7be9f861da549e42beb03'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
