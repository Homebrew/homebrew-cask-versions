cask 'cura-beta' do
  version '2.1.2'
  sha256 'cbdf1fa3da50996c01cd78350f2eb3cfc852dbadb4eecca4a3fffb356eb1f070'

  url "https://software.ultimaker.com/Cura_open_beta/Cura-#{version}-Darwin.dmg"
  name 'Cura'
  homepage 'https://ultimaker.com/en/products/software'
  license :oss

  app 'Cura.app'

  zap delete: '~/.cura'
end
