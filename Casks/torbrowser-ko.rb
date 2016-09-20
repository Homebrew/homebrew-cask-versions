cask 'torbrowser-ko' do
  version '6.0.5'
  sha256 '0505423cdf9e7ec91826ff126d943fe90810e2c359d535342b8fc3ac6823a5ba'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ko.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
