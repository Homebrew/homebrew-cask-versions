cask 'torbrowser-ru' do
  version '6.0.1'
  sha256 'acb1ea02d6e39e85ead0c9fa46be5393bfc6857c49cf296d128fcb079a596430'

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_ru.dmg"
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  license :oss
  gpg "#{url}.asc",
      key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  app 'TorBrowser.app'
end
