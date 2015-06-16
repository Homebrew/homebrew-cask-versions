cask :v1 => 'torbrowser-nl' do
  version '4.5.2'
  sha256 '4ca65c51cbdf826b63f5aba19caf80574e57959f83672a19bfec42f4d8627230'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_nl.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
