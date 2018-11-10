cask 'slicer-nightly' do
  version '4.11.0.27537,901576'
  sha256 '1a14b68f120dad8fcea2cb918212de8582eed655ed9598fdc51f579ec0c463aa'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
