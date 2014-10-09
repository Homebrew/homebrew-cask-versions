class StatTransfer11 < Cask
  version '11'
  sha256 'a2226e03a0281665454918b45531c8fc2938ba7590ae63802fa76dd749230631'

  url "ftp://ftp.stattransfer.com/mac/stdemo#{version}.dmg"
  homepage 'https://stattransfer.com/'
  license :commercial

  pkg 'st_installer#{version}.pkg'
end
