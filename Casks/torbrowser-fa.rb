cask 'torbrowser-fa' do
  version '5.5.5'
  sha256 '6849eff19b039d5e52261f8f3dd6c0cca66fe39b2846eab941d659248f43a036'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_fa.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
