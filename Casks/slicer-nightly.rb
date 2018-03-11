cask 'slicer-nightly' do
  version '4.9.0.27036,781530'
  sha256 'b30028c1f89698157a3aa7d43aa2754d0a0d26f3fb4eefafab0b784a65338710'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
