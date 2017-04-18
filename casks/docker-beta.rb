cask 'docker-beta' do
  version '1.11.1-beta13.1'
  sha256 '431462c640961333d80fcd26995e6543093d2bc5a7384e86ce5f958b56d4c5ea'

  url 'https://dyhfha9j6srsj.cloudfront.net/Docker.dmg'
  name 'Docker for Mac - Beta'
  homepage 'https://beta.docker.com/docs/'
  license :gpl

  app 'Docker.app'

  caveats "Using #{token} requires an invitation code. Visit https://beta.docker.com to request a code."
end
