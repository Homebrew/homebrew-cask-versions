cask 'cura-beta' do
  version '2.1.3'
  sha256 '16c2d527da1fde6af746a8bff7c6d0b04af51c4d5dea9626c8caef35c04c1744'

  url "https://software.ultimaker.com/Cura_open_beta/Cura-#{version}-Darwin.dmg"
  name 'Cura'
  homepage 'https://ultimaker.com/en/products/software'
  license :oss

  app 'Cura.app'

  zap delete: '~/.cura'
end
