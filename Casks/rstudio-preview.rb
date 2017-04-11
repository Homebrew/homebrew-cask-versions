cask 'rstudio-preview' do
  version '1.0.141'
  sha256 'd2b6770ae0dd67299cb24d2d4103228aca9ce249f192dabf402fc30162b9c214'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
