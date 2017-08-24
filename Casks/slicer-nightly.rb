cask 'slicer-nightly' do
  version '4.7.0.26298,679749'
  sha256 '173749c5b96d99dabac0bc72936a29c04afebdc262ba922176323478b1fd9a9e'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
