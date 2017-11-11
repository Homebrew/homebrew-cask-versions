cask 'omegat-dev' do
  version '4.1.2,02'
  sha256 '8a3574d97de621da21b99749a8af67edee0ac414ecec357d7098f93423fd1238'

  # downloads.sourceforge.net/omegat was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Latest/OmegaT%20#{version.before_comma}%20update%2#{version.after_comma}/OmegaT_#{version.gsub(',', '_')}_Beta_Mac_Signed.zip"
  appcast 'https://sourceforge.net/projects/omegat/rss?path=/OmegaT%20-%20Latest',
          checkpoint: '4128fd774ac85dcb6ed7d433f72a0b6b2b1db9f8ba9198bb56630a562ffde0ce'
  name 'OmegaT Development'
  homepage 'https://omegat.org/'

  app "OmegaT_#{version.gsub(',', '_')}_Beta_Mac_Signed/OmegaT.app"

  caveats do
    depends_on_java('8+')
  end
end
