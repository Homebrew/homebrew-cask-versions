class RstudioPreview < Cask
  version '0.98.1079'
  sha256 'f504400b9cb6d01f7504beedc6ad41b1b10ca8bab8a238eacfe3989cce0b0c9e'

  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :unknown

  app 'RStudio.app'
end
