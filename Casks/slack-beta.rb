cask 'slack-beta' do
  version :latest
  sha256 :no_check

  url 'https://slack.com/ssb/download-osx-beta'
  name 'Slack'
  homepage 'https://slack.com/'

  app 'Slack.app'
end
