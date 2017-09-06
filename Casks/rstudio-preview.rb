cask 'rstudio-preview' do
  version '1.1.353'
  sha256 '3d5898c6d9ee764dd28494b4af0f4edf48921819dab93d8747ea3d4b07ac3c9a'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
