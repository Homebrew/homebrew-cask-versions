cask 'slicer-nightly' do
  version '4.9.0.26685,727991'
  sha256 '162df5983013e8c5e262f9e40c23eca1e0b33b18dd3844192e5adde3369bc243'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
