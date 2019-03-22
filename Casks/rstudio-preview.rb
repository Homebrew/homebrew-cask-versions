cask 'rstudio-preview' do
  version '1.2.1330'
  sha256 '20ffc81ed0f84819306cd7dce26d31a22e350053faa81472159bdea28b261c51'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
