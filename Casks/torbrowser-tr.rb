cask 'torbrowser-tr' do
  version '6.0'
  sha256 'ecdcb1e9efc101486ac77ac0abce1d27a76dd4ec2dd63f4425549fc6377a83e8'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_tr.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
