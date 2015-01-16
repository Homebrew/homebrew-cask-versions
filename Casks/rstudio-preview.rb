cask :v1 => 'rstudio-preview' do
  version '0.99.174'
  sha256 '50407f5f2fdcc84dab862d5c32e9264e8280338d625389ce9963e35cf83c7bc4'

  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :unknown

  app 'RStudio.app'
end
