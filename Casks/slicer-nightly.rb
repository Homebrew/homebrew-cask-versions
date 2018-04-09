cask 'slicer-nightly' do
  version '4.9.0.27131,792548'
  sha256 '018a0dd6ea329698f97588d915f20e0118d859b7ff258ed769d484997f39a4a3'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
