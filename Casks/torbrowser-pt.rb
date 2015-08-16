cask :v1 => 'torbrowser-pt' do
  version '5.0'
  sha256 'f3edd13af22c40619556af539b8c18d431c44da680e8e33dffed258c2b510a79'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_pt-PT.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
