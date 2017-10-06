cask 'slicer-nightly' do
  version '4.7.0.26422,694934'
  sha256 '762921a70aa93a2c337911ece1dac6656f260a518b18ed81e532808cf3aad33b'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
