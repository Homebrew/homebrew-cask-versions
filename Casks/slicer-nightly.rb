cask 'slicer-nightly' do
  version '4.9.0.27401,870869'
  sha256 '0ffbb97e5c468dae9f4caf2d528ceeb33ec9c78354226e757888debc88412be8'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
