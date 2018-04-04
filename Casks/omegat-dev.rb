cask 'omegat-dev' do
  version '4.1.4'
  sha256 'cff08c41cc6f9c8eac76e3bf4756d76feade57dbd0ddadcc55f1cab1d5446039'

  # downloads.sourceforge.net/omegat was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Latest/OmegaT%20#{version}/OmegaT_#{version}_Beta_Mac_Signed.zip"
  appcast 'https://sourceforge.net/projects/omegat/rss?path=/OmegaT%20-%20Latest',
          checkpoint: '74928e8884a81e73988f43f6ac2cf03cff869563cba0cb0015b40d184f8433eb'
  name 'OmegaT Development'
  homepage 'https://omegat.org/'

  app "OmegaT_#{version}_Beta_Mac_Signed/OmegaT.app"

  caveats do
    depends_on_java('8+')
  end
end
