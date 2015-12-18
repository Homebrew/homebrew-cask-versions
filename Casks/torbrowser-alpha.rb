cask 'torbrowser-alpha' do
  version '5.5a4'
  sha256 '5e5ed97bb6e8819a3c69c76f947e4839056bbaa1cf298a6e80aaa3f0a8e392b1'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  
  app 'TorBrowser.app'
  
  caveats <<-EOS.undent
    If you already have a version of TorBrowser installed this will overwrite your local settings.
    It is recommended to use TorBrowser's built-in update mechanism after the first install to keep your settings.
  EOS
end
