cask 'slicer-nightly' do
  version '4.7.0.26331,684535'
  sha256 '6d7428f909e596ceb355b280b07c6c4a7ff5975fa1e4d3efb7fbbcfec124bafc'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
