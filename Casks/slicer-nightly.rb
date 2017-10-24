cask 'slicer-nightly' do
  version '4.9.0.26504,702030'
  sha256 'd2867bec0bbebe7683f7ffdf63329393b85b2a7e1110c8c2b062e13176137fe8'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
