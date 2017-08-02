cask 'slicer-nightly' do
  version '4.7.0,672116'
  sha256 '41d50f7531bef1b759101f97ca1295d2f332133e8e06419e8d285d89552ee6d7'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
