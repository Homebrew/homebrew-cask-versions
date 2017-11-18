cask 'cura-beta' do
  version '2.5.0'
  sha256 'd9267b607da851ac383c78a2b44a1456eecf4d64a85d7c7e41a3e7749a6212dd'

  url "https://software.ultimaker.com/Cura_open_beta/Cura-#{version}-BETA-2-Darwin.dmg"
  name 'Cura'
  homepage 'https://ultimaker.com/en/products/cura-software'

  app 'Cura.app'

  zap trash: '~/.cura'
end
