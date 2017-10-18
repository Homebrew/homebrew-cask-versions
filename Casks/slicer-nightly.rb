cask 'slicer-nightly' do
  version '4.7.0.26481,699048'
  sha256 '6bd5ed2a55fc63f05b661e0a1711e601e19938de0a7164eeeb143a4a55fd5cf8'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
