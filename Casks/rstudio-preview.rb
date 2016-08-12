cask 'rstudio-preview' do
  version '0.99.1282'
  sha256 '621491dbf4474deeee129a0ada28e2f4ea92c15da9986c9606fe1a9561527482'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
