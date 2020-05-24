cask 'rstudio-preview' do
  version '1.3.959'
  sha256 '065484f558cf6cd8be13a9ec2bd662176f468b0cdda51ee398f4039bd41ad3b7'

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
