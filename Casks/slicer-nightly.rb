cask 'slicer-nightly' do
  version '4.9.0.27083,783379'
  sha256 '21eaee7263adcd0a2d8c3bfbe9f58aca30419e531d36fda1416bba7e9662204b'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
