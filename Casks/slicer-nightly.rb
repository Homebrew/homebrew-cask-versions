cask 'slicer-nightly' do
  version '4.7.0.26392,691323'
  sha256 '724e4918eb8c489fb7102d820e62a104ee22ee7b9edf09f70123b791d1c46f61'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
