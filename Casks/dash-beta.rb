cask :v1 => 'dash-beta' do
  version '2.3.0'
  sha256 '5434eb1eb8a1429d4e1e6bcdb5b76a7b5930ceab1bbd94f41cb6a41e454e7512'

  # cloudfront.net is the official download host per the Dash beta page:
  # https://rink.hockeyapp.net/download/ad59cd8c60434509b4b58951e1b7b483
  url 'https://dl0tgz6ee3upo.cloudfront.net/production/app/builds/004/633/802/original/537af3eefba4513c44aedbab7606c3bf/Dash_Beta.app.zip'
  homepage 'http://kapeli.com/dash'
  license :commercial

  app 'Dash Beta.app'
end
