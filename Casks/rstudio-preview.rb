cask 'rstudio-preview' do
  version '0.99.1292'
  sha256 '439c944b70ad2d1488ddb5e0561172be08816e40957b2df9005242736486b1f3'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
