cask 'slicer-nightly' do
  version '4.11.0.27630,923324'
  sha256 '31a4fb49485e33b066d35220329d11cd18f8c446a9ac2c9f038d3df9c4f820ef'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
