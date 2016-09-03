cask 'rstudio-preview' do
  version '1.0.5'
  sha256 '7ca8767dec7d9a08d3cb2aa8b231a44a5e322d1eb25f012abd6e8e238d4eda85'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
