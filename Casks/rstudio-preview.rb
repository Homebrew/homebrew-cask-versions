cask 'rstudio-preview' do
  version '1.0.44'
  sha256 'ec571ee4d1415cc031f8f55873ca15e75949038fe680520799934e115138066a'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
