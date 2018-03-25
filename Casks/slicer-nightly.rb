cask 'slicer-nightly' do
  version '4.9.0.27105,785995'
  sha256 '8a8b204c3965e6004f8929cda0e3179ab86ac45ba33daa63b892b0c595f3b07c'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
