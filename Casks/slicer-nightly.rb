cask 'slicer-nightly' do
  version '4.9.0.27085,783959'
  sha256 '7ff66ee208de5b4883e77924e4f7a095376b455093b9ac06221b2c7dd764e0d0'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
