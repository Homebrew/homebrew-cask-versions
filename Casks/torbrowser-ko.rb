cask :v1 => 'torbrowser-ko' do
  version '5.0.3'
  sha256 'ecdf8c09bb26bcbaf576a3550119ba0a85735543d3c0aae656204463c365c2a0'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ko.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
