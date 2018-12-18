cask 'rstudio-preview' do
  version '1.2.1194'
  sha256 '2fe25a2c718d4ff6433edea6fbb98aaf65dc19b1ccd7b657243c09304008d758'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
