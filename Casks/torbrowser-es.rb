cask :v1 => 'torbrowser-es' do
  version '4.5'
  sha256 '12db03acee9d952e46526a35be01176e9e246b0d3b9bbc7e31ca43b2217e5eed'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_es-ES.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
