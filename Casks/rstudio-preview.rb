cask 'rstudio-preview' do
  version '1.1.419'
  sha256 '3af70da34340a9d10eda4f0b765610cbd5d6bfa94236b23692d056361cf8c7b2'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
