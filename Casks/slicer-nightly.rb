cask 'slicer-nightly' do
  version '4.9.0.26962,777766'
  sha256 'bc11c8ab77d152180d4d2b0ecd015d2a3360373f9374c10b77905e7be6317567'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
