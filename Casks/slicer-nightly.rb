cask 'slicer-nightly' do
  version '4.7.0.26309,681466'
  sha256 '339ee9846904c38d78a4357dda6aa44b783911672535022d4854e1730995c9be'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
