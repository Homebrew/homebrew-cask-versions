cask 'slicer-nightly' do
  version '4.9.0.27169,802024'
  sha256 '89bdc3cdebf7b1822764494f77cff7b8e14038faf8edd2ab0ac6f6ebb78a7649'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
