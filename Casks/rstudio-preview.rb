cask 'rstudio-preview' do
  version '1.0.40'
  sha256 '496823b3537241d2672205286e228caa30b5d476353ee55dc896506f2b27834d'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
