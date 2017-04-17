cask 'rstudio-preview' do
  version '1.0.142'
  sha256 'd5e4fb03f0659bfbcc876368cc7f57b6b60e646cba0e580ba542453d61ac0b70'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
