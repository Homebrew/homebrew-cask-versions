cask 'omegat-dev' do
  version '4.1.0'
  sha256 '32ecddcf71a92973bb3578d009aadfac762742df9b7eacf2cc60c75251f84762'

  # downloads.sourceforge.net/omegat was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Latest/OmegaT%20#{version}/OmegaT_#{version}_Beta_Mac_Signed.zip"
  appcast 'https://sourceforge.net/projects/omegat/rss?path=/OmegaT%20-%20Latest',
          checkpoint: 'cb4a14253651e4e411a07161493400a78880897bb0e162eb62130b415f400fd8'
  name 'OmegaT Development'
  homepage 'http://www.omegat.org/'

  app "OmegaT_#{version}_Beta_Mac_Signed/OmegaT.app"

  caveats do
    depends_on_java('8+')
  end
end
