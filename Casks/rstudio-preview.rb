cask 'rstudio-preview' do
  version '0.99.1283'
  sha256 '227df00d360ee3d5436d1c97864b409f0ef0b17b530472d17989827f359254bb'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
