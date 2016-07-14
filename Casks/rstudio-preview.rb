cask 'rstudio-preview' do
  version '0.99.1258'
  sha256 '691e5cc84bbb78eea0729edcce9a76fc6ce3c81b85fc4a0603e58e4f46817f28'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
