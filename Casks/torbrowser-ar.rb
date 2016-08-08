cask 'torbrowser-ar' do
  version '6.0.3'
  sha256 '4e6cf878fd3c4f0f418de7e57678978e8fa121cd1af7745721867ce420956b82'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ar.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
