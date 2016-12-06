cask 'rstudio-preview' do
  version '1.0.136'
  sha256 '0345818c518bc668e2939e36dcada7572730bdc86cd1b40e1b7d6eee3cb481e2'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
