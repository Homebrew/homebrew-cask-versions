cask 'slicer-nightly' do
  version '4.7.0.26430,695992'
  sha256 'ae1daef5fe0be0ab23d4bea6182027cf26bccbae878a5b97d24a509e292e13be'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
