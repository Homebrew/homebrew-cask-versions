cask 'multimarkdown-composer-beta' do
  version '3.0b47'
  sha256 '44c9fec7f025e43634edd74cfd83599d1c8bbe160fb60abd7605226ccbd63aca'

  # files.fletcherpenney.net.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://files.fletcherpenney.net.s3.amazonaws.com/MultiMarkdown%20Composer%20%28Non-Sandboxed%29-#{version}.zip"
  name 'MultiMarkdown Composer'
  homepage 'http://support.multimarkdown.com/kb/future-plans/where-can-i-download-the-beta-for-v3'

  app 'MultiMarkdown Composer.app'
end
