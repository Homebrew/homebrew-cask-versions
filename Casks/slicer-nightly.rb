cask 'slicer-nightly' do
  version '4.9.0.27180,805346'
  sha256 'a5317f79cf224cc2023c056ea3bdc3107bc68984470c7ff28f1a8f7c5aed99c6'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
