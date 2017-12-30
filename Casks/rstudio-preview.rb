cask 'rstudio-preview' do
  version '1.1.408'
  sha256 'dbe830c47517ecedd864d91676fa68240298aad6e043a240d4ded35172eb394d'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
