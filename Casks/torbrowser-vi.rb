cask 'torbrowser-vi' do
  version '5.5.1'
  sha256 'b4b939a8d0f4372e75f9e94b6b576ca78a6036761f608e5e85d988dc32e9b779'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_vi.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
