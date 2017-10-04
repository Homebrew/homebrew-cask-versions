cask 'slicer-nightly' do
  version '4.7.0.26418,694641'
  sha256 '260259a41361f9a822c72fca0faefef9c1dda84c7791d3a9ae4f02d94942761e'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
