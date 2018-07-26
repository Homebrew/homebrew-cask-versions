cask 'slicer-nightly' do
  version '4.9.0.27292,846455'
  sha256 'c0f1c866076cbd8b201a385202ec5ac27aa0710b25c5ba154d68311f744dca22'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
