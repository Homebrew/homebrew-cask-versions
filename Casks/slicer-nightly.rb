cask 'slicer-nightly' do
  version '4.7.0.26307,681016'
  sha256 'e4d02f38e85609e41fde46eb1787b86966e8605837f6be401a1bbb82fc28d3ff'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
