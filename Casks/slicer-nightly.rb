cask 'slicer-nightly' do
  version '4.11.0.28129,999837'
  sha256 '11d000b24d904e95af8ec0cf154e41392443475a7153b3b184b7e0ed8b5a3d84'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
