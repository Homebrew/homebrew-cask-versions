cask 'slicer-nightly' do
  version '4.11.0.27666,927386'
  sha256 '8b6ffc8a5a3bb93065a848262270585f26bd3d484c16cc8f33a8f9d34a207474'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
