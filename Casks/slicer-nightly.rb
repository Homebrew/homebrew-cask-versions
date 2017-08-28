cask 'slicer-nightly' do
  version '4.7.0.26309,681917'
  sha256 'b9230886815201e4799e5ba0f534f0d218ee8b01a8111a3c9eb07b1c7c58f544'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
