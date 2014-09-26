class RstudioPreview < Cask
  version '0.98.932'
  sha256 'ca652a4afd70eeb6cc7d5a016312ba535f0a000f97deec6e2367503045666c1e'

  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  homepage 'http://www.rstudio.com/ide/download/preview'

  app 'RStudio.app'
end
