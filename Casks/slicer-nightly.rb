cask 'slicer-nightly' do
  version '4.11.0.28138,1001140'
  sha256 '4b9a039ea65a4e904e07d675835054063c81d2d7dff8375bc1f54b69fb726bb1'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
