cask 'rstudio-preview' do
  version '1.0.153'
  sha256 'a33d6c0bc02307b10c1f88b938c9b76209d37eb02ceff17661a99a4463aafcbd'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
