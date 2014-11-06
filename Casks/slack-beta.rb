class SlackBeta < Cask
  version '1.00 (2352)'
  sha256 '21e079794bbbc67b5cbd7b2edd259559440b15d721f72d365ba19f3c7bf9ee40'

  url 'https://rink.hockeyapp.net/api/2/apps/06bd6493684f65a3b8f47aca92c9006e/app_versions/16?format=zip&avtoken=a32358a50d1ab00f818e7533d60cfa68c8fd6b64'
  homepage 'https://slack.com/'
  license :closed

  app 'Slack.app'

  caveats do
    puts 'Initial beta version with multiple team support'
    os_version_only('10.6', '10.7', '10.8', '10.9', '10.10')
  end
end
