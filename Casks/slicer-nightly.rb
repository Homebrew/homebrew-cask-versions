cask 'slicer-nightly' do
  version '4.9.0.26673,725649'
  sha256 'cdff2157d34de2564d3d2b843038c9f72a927683d0c04ef1cbb4d0432690b8eb'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
