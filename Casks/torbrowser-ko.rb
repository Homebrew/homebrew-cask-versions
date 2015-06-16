cask :v1 => 'torbrowser-ko' do
  version '4.5.2'
  sha256 '3ebd57ab6d15dc4699dcf90aff78899daf1ee941462f33a866fae39e059984f3'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ko.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
