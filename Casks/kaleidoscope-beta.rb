cask :v1 => 'kaleidoscope-beta' do
  version '2.1.0'
  sha256 'e16360273fb6d37560c7974b95728d82a0482268641753c49f903bf36445d35b'

  url "http://cdn.kaleidoscopeapp.com/releases/Kaleidoscope-#{version}-134.zip"
  homepage 'http://www.kaleidoscopeapp.com/'
  license :unknown

  app 'Kaleidoscope.app'
end
