cask 'cura-beta' do
  version '2.1.0'
  sha256 '074a50f06be491de79e1bdb37669a6923d6f99390d9d7e62bf400a3d7913e0b5'

  url "https://software.ultimaker.com/Cura_open_beta/Cura-#{version}-Darwin.dmg"
  name 'Cura'
  homepage 'https://ultimaker.com/en/products/software'
  license :oss

  app 'Cura.app'

  zap delete: '~/.cura'
end
