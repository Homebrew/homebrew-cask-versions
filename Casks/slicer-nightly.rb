cask 'slicer-nightly' do
  version '4.7.0.26293,678946'
  sha256 'a4e5b88dd8bf10bd18438e1dd3d77603d30764410c8447eb6af163d7e55aa619'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
