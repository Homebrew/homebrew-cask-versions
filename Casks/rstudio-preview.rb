cask 'rstudio-preview' do
  version '1.3.1045'
  sha256 'a5ee624ab3ce1b32f9de719b0f6c39db38e464ce1cc9e34bd96d9db905381522'

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
