cask 'slicer-nightly' do
  version '4.7.0.26329,684107'
  sha256 'f89309b64b8c437df7f569cc78b1312476dde770a7dd1d5ea1a2b694e892d0af'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
