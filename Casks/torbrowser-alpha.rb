cask :v1 => 'torbrowser-alpha' do
  version '5.5a1'
  sha256 '46d650f80c6cacb877ac24683d645d40b7626064043d6b260147b7b60e735f89'

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
