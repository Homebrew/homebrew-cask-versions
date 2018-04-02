cask 'slicer-nightly' do
  version '4.9.0.27125,789225'
  sha256 '31b398f9e6d80659e060e2c8004effe5e1d98df5b563c0cf74a53aa9618835fc'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
