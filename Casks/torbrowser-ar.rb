cask :v1 => 'torbrowser-ar' do
  version '4.5'
  sha256 'f36db7b68966079ca68eac548ebe7b7e8a364d808ae68132c09dce9d6553c9f9'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ar.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
