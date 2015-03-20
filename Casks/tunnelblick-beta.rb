cask :v1 => 'tunnelblick-beta' do
  version '3.5beta08_build_4236'
  sha256 '60badae32c6013e006f011833417b468d51b6750d7417f006ebc8756265149b6'

  url "http://downloads.sourceforge.net/project/tunnelblick/All%20files/Tunnelblick_#{version}.dmg"
  homepage 'https://code.google.com/p/tunnelblick/'
  license :oss

  app 'Tunnelblick.app'
end
