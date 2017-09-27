cask 'slicer-nightly' do
  version '4.7.0.26393,691993'
  sha256 '6e2434c871b18e917c6e2884c2b899c2f8ca0a9fe64e8a9a4d726b144d6f8bce'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
