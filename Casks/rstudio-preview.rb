cask 'rstudio-preview' do
  version '1.3.1023'
  sha256 '26b227076e659aa9744c7354c7db15939ea24593a90ef36ce3315d2f2b35ee6e'

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
