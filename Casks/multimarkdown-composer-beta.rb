cask 'multimarkdown-composer-beta' do
  version '4.0,46'
  sha256 '5bf77f1b77d11cd171234812c3b79075fc1b0ef7c79612be7e4ca255358a2193'

  # files.fletcherpenney.net.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://files.fletcherpenney.net.s3.amazonaws.com/MultiMarkdown%20Composer-#{version.before_comma}(#{version.after_comma}).zip"
  name 'MultiMarkdown Composer'
  homepage 'http://support.multimarkdown.com/kb/composer-v4/multimarkdown-composer-version-4-beta'

  app 'MultiMarkdown Composer.app'
end
