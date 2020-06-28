cask 'rstudio-preview' do
  version '1.3.1054'
  sha256 '0c41dac5edea4611b07f033adff7ef4ef06e165cbedaf2f35371db41c647b38f'

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
