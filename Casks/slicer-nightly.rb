cask 'slicer-nightly' do
  version '4.11.0.28050,986247'
  sha256 '6bcd221063346283fa84d6615f6703c957675a175a8e306bdba3b95dcba83844'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
