cask :v1 => 'torbrowser-fa' do
  version '4.0.5'
  sha256 'bd5eaef79b6741498c71220603003a5700e93507c68177a9dbd29a2b1d8443aa'

  url "https://www.torproject.org/dist/torbrowser/#{version}/TorBrowser-#{version}-osx32_fa.dmg"
  gpg "#{url}.asc",
      :key_id => '416f061063fee659'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
