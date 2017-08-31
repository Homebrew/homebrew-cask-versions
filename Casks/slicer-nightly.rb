cask 'slicer-nightly' do
  version '4.7.0.26319,682707'
  sha256 '3e96d4da7e3e5736ebfbdd1137f81927670da9f27bc29ad3b8746c9cdde59845'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
