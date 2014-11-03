class SlackBeta < Cask
  version '0.69 (2350)'
  sha256 '7a6be7418e27970b38f20c8e2516386e346e7b731ee814d15f5a40794b440cdd'

  url 'https://rink.hockeyapp.net/api/2/apps/06bd6493684f65a3b8f47aca92c9006e/app_versions/14?format=zip&avtoken=991dc9c0a3318d490712fb26e821ff2ab0a5fe24'
  homepage 'https://slack.com/'
  license :closed

  app 'Slack.app'

  caveats do
    puts 'Initial beta version with multiple team support'
    os_version_only('10.6', '10.7', '10.8', '10.9', '10.10')
  end
end
