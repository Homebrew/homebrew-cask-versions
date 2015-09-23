cask :v1 => 'torbrowser-alpha-ar' do
  version '5.5a3'
  sha256 'cff609da6f3851c4fcfafcf3e212fd9fed489bd4a7e51fc3d63c9b402a6da277'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ar.dmg"
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
