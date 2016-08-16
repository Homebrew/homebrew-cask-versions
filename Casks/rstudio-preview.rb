cask 'rstudio-preview' do
  version '0.99.1286'
  sha256 '33453a175ae422f9f038fce39a862db81d8f8e40af71fc878968b7ad73d7f917'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
