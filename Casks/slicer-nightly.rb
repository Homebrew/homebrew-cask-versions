cask 'slicer-nightly' do
  version '4.7.0.26393,691654'
  sha256 'bf73014ce201013213b451cab088f7cc03d427d7cbcc599d297a3ab3a32c6d1a'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
