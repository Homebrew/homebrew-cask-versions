class AutodmgBeta < Cask
  version '1.5b359'
  sha256 'a0eb343fe44df8d347cbb29ab3f07f45847e649eeb295162787cf729e17d274e'

  url "https://github.com/MagerValp/AutoDMG/releases/download/v#{version}/AutoDMG-#{version}.dmg"
  homepage 'https://github.com/MagerValp/AutoDMG'
  license :oss

  app 'AutoDMG.app'
end
