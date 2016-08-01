cask 'rstudio-preview' do
  version '0.99.1266'
  sha256 'ab9dbda85b724c2bfd3d8e1fca876ee570808f4cb48620c65c216f6274ae5a74'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
