cask 'torbrowser-ja' do
  version '6.0.1'
  sha256 'c317b4d964e47e889a36628e52c918ba33368f5f3492bd1ca3029a475e8d3aeb'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ja.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
