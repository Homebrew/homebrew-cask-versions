cask 'slicer-nightly' do
  version '4.7.0.26221,675049'
  sha256 'fb7b9fe4bc678ea889617ed3a09e7e0dbba8a6ec765d2efd65078fcd343f73f0'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
