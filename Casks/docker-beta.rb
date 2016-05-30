cask 'docker-beta' do
  version :latest
  sha256 :no_check

  url 'https://dyhfha9j6srsj.cloudfront.net/Docker.dmg'
  name 'Docker for Mac (beta)'
  homepage 'https://beta.docker.com'
  license :unknown # TODO: change license

  app 'Docker.app'

  caveats 'Docker for Mac is, at the moment, a closed beta and requires an activation token. This token can be asked at https://beta.docker.com'
end
