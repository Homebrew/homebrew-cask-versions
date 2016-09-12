cask 'cura-beta' do
  version '2.3.0'
  sha256 '7aebc105cfe88022fc163a5c26157e51228f20c9e67ed8fb1f609b2634b5102f'

  url "https://software.ultimaker.com/Cura_open_beta/Cura-#{version}-BETA-Darwin.dmg"
  name 'Cura'
  homepage 'https://ultimaker.com/en/products/software'
  license :oss

  app 'Cura.app'

  zap delete: '~/.cura'
end
