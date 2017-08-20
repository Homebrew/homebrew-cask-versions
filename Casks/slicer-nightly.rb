cask 'slicer-nightly' do
  version '4.7.0.26293,678537'
  sha256 '54c7b57032998e841c390a828c9b634c3d5510fadd3738a85084145956f0cb08'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
