cask :v1 => 'torbrowser-alpha' do
  version '5.0a3'
  sha256 '79f5b53f51124d483fd19e33eca1fdbc8fc37a8e2e0d4b55844fd45e8f954ded'

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
