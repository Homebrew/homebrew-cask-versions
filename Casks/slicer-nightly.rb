cask 'slicer-nightly' do
  version '4.7.0.26243,676082'
  sha256 '3b2114b5b4120b77d0738ab014cc1536aa4118f5b7973efe89fe4a02a87441a0'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
