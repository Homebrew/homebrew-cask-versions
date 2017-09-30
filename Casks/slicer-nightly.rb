cask 'slicer-nightly' do
  version '4.7.0.26405,693322'
  sha256 '1176947062666c614f5890bb5a4ad86eda79160dc7e1e927aaeb7530f88ae794'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
