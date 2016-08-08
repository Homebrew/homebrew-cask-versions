cask 'rstudio-preview' do
  version '0.99.1280'
  sha256 '3da3f89789e51b3504bd40e2b3f2ca9d499133e1083c94251dead58b471da1d2'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
