cask 'slicer-nightly' do
  version '4.7.0.26329,683761'
  sha256 'e44e2dae268b7bb27c34cb55d695c995e453303b76aba00d5619b7faa9a2246c'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
