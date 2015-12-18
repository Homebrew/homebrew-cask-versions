cask 'cura-beta' do
  version '15.06.03'
  sha256 '60c2fe1c5d7b5e738b7906e67ee66b6ba80a9d0a91f98cd6704af039afa2f732'

  url "http://software.ultimaker.com/15.06/Cura-#{version}-Darwin.dmg"
  name 'Cura'
  homepage 'https://ultimaker.com/en/products/software'
  license :oss

  app 'Cura.app'

  zap :delete => '~/.cura'
end
