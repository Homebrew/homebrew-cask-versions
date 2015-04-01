cask :v1 => 'tunnelblick-beta' do
  version '3.5beta10_build_4262'
  sha256 '77b2c0699b26242de1b207d2ed6f06341b0672781cba51d7ecae28646a670f71'

  url "http://downloads.sourceforge.net/project/tunnelblick/All%20files/Tunnelblick_#{version}.dmg"
  homepage 'https://code.google.com/p/tunnelblick/'
  license :oss

  app 'Tunnelblick.app'
end
