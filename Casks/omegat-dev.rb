cask 'omegat-dev' do
  version '4.1.0'
  sha256 :no_check

  # downloads.sourceforge.net/omegat was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Latest/OmegaT%20#{version}/OmegaT_#{version}_Beta_Mac_Signed.zip"
  appcast 'https://sourceforge.net/projects/omegat/rss',
          checkpoint: 'ee727bd624e9fc1e1358f540422afe8b6f5d917258e97db85d3cb9c8115f4519'
  name 'OmegaT Development'
  homepage 'http://www.omegat.org/'

  app "OmegaT_#{version}_Beta_Mac_Signed/OmegaT.app", target: 'OmegaT Development.app'

  caveats do
    depends_on_java('8+')
  end
end
