cask 'slicer-nightly' do
  version '4.7.0.26431,696698'
  sha256 '8b34f78f36f41d1fadb92ed10ae132c5da5219c35538b37c9a80e50b61617bba'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
