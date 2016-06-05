cask 'rstudio-preview' do
  version '0.99.1208'
  sha256 '49f0cdda7d1828aa46ae3bc380dea733a753144c4550462c634faa5b8895e3c1'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
