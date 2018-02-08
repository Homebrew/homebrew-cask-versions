cask 'slicer-nightly' do
  version '4.9.0.26842,760102'
  sha256 'f8c6e8184fc1e5b7434bd22491fc175e140ea99fda39880738951764f2737a5d'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
