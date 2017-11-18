cask 'slicer-nightly' do
  version '4.9.0.26645,716334'
  sha256 '50b6c8011c788b847ce4df4167cceac85b193868b8b761e39cd6a9c59dbc28bf'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "http://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
