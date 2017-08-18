cask 'slicer-nightly' do
  version '4.7.0.26289,677302'
  sha256 '64f3f008650bba831342353f0848505b7eb562c5fab982c27cb67e1a83b6fda8'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
