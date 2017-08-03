cask 'slicer-nightly' do
  version '4.7.0.26187,673138'
  sha256 '84652534fa0f72c019e7db0c20057726415dd1f122382b3cd95ead15753b4d36'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
