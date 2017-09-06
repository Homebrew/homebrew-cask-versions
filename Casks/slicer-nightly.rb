cask 'slicer-nightly' do
  version '4.7.0.26338,684799'
  sha256 'ab7abf63c1de4f98a41845f7aa4e3e52aabce5e537717cbcdf34830d6d94412a'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
