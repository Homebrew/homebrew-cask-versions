cask 'torbrowser-alpha' do
  version '7.0a4'
  sha256 'b1db9ad830b6044b9e7fe3323403d5aab0943996c7136ca6bf8c686702c342ee'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
