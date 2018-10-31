cask 'slicer-nightly' do
  version '4.11.0.27526,895038'
  sha256 '59529897b5aa2e6bf30799720fbf7dca5775738db927632e29ce3f8f62150781'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
