cask :v1 => 'torbrowser-ko' do
  version '5.0'
  sha256 'f1034029f553ab8bf5bca33ee34b6bc664d4f0842d622de749a8e8a899b35150'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ko.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
