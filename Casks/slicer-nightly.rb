cask 'slicer-nightly' do
  version '4.9.0.27267,830554'
  sha256 'ba9fed6605d0d18ece5f151a192d38c04e4035551a64b554b6e76db90afac97b'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  name '3D Slicer Nightly'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
