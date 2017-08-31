cask 'slicer-nightly' do
  version '4.7.0.26325,683041'
  sha256 'b5d9853a879633ca8f4c4ce0f68039736f57d74b6e8f4b8d23149c9cde0d5be4'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
