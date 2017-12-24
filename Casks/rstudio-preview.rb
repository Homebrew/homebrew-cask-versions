cask 'rstudio-preview' do
  version '1.1.402'
  sha256 '1e3afa03266c6464b205bb0fe4f58f8b062609a1a2f7bf46b8538be912575113'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
