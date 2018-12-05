cask 'slicer-nightly' do
  version '4.11.0.27589,916796'
  sha256 '9a3061259f88549bea479ac065a32ed867c5609861054ffe97cd3494434893e7'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
