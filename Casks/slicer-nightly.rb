cask 'slicer-nightly' do
  version '4.9.0.27356,861231'
  sha256 '02a356784471fd00246f53f2d6dc7f75dfbe93d692d8096b571a984301aa6c58'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
