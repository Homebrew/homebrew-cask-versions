cask 'cura-beta' do
  version '2.1.1'
  sha256 '7d9e2da7f561bb443ea13b12c5d333360c4635ee625681a3d65833da7740bc1d'

  url "https://software.ultimaker.com/Cura_open_beta/Cura-#{version}-Darwin.dmg"
  name 'Cura'
  homepage 'https://ultimaker.com/en/products/software'
  license :oss

  app 'Cura.app'

  zap delete: '~/.cura'
end
