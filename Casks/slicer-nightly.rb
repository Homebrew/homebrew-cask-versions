cask 'slicer-nightly' do
  version '4.7.0.26428,695639'
  sha256 'a18a23da75ffaafb16b26d06a2bf6d64ffb449f594b2783ea385094ec8a6941a'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
