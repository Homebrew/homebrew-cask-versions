cask 'rstudio-preview' do
  version '0.99.1187'
  sha256 '158a70003622bb972695fd84cd9b089f2de4b8300905eb20810a6b6e6233e952'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
