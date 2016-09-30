cask 'rstudio-preview' do
  version '1.0.31'
  sha256 '215cad3809e11234e26c778815533a88fa259b0932d47d149fe3481cbd50dff7'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
