cask 'slicer-nightly' do
  version '4.7.0.26273,676538'
  sha256 '3614adac334c39725efc328936985ffd79e59f739d14ca91baf34bf952e00b46'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
