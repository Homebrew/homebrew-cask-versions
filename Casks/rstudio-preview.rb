cask 'rstudio-preview' do
  version '1.0.134'
  sha256 'f85a7408d4f26c00e9cced9eac059fe67f6b82523fceabde221ced2ec4335bf6'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
