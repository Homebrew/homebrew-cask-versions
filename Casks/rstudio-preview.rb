cask 'rstudio-preview' do
  version '0.99.1277'
  sha256 '5b05defbb7b02bcbfa9e719cfa13946b8a8fc9b080a3dbd46b95e96987d62926'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
