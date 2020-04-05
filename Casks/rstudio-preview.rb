cask 'rstudio-preview' do
  version '1.3.937'
  sha256 'e4f41fa2b0902d5a208e2df91f62431f4a5cba431355e084caf97c63b840814d'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
