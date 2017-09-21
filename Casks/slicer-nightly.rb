cask 'slicer-nightly' do
  version '4.7.0.26384,690310'
  sha256 'afacfed20e259a5fbe19656abb25164cb0c64ca6a743f21a6f223f8df2caa4fb'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
