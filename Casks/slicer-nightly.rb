cask 'slicer-nightly' do
  version '4.7.0.26374,689893'
  sha256 'e3d800bd652bd70f9d3906e2b1092e72c1b22aefef4b8ae25bc719664e33892d'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
