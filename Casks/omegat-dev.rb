cask 'omegat-dev' do
  version '4.1.1'
  sha256 '4a3b03e98e61527f14442a49eb6563b1a6df0d7bf22e22be751e6cff63734739'

  # downloads.sourceforge.net/omegat was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Latest/OmegaT%20#{version}/OmegaT_#{version}_Beta_Mac_Signed.zip"
  appcast 'https://sourceforge.net/projects/omegat/rss?path=/OmegaT%20-%20Latest',
          checkpoint: '7775eec68c7ea509552572bd1304925c654554cac557ee3d0ea5b3cba6522a0e'
  name 'OmegaT Development'
  homepage 'http://www.omegat.org/'

  app "OmegaT_#{version}_Beta_Mac_Signed/OmegaT.app"

  caveats do
    depends_on_java('8+')
  end
end
