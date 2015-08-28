cask :v1 => 'torbrowser-vi' do
  version '5.0.2'
  sha256 'e65ffb350b41f0a9ae02fbcc7e6b152d891d83123aac263c7f96d47f3a565acd'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  gpg "#{url}.asc",
      :key_id => 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss

  app 'TorBrowser.app'
end
