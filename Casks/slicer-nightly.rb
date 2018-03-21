cask 'slicer-nightly' do
  version '4.9.0.27090,784836'
  sha256 'a8aa051cffceaea069308420fc91e2f57f670ad58ed9335b73bb829c90d1b30c'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
