cask 'bitbar-beta' do
  version '1.5.0-beta1'
  sha256 '4ef9a1e113b31f3b1f6902bca9c1fca7e1d5ab02ca3159f15fd079fef8626668'

  url 'https://github.com/matryer/bitbar/releases/download/v1.5.0-beta1/BitBar-v1.5-beta1.zip'
  appcast 'https://github.com/matryer/bitbar/releases.atom',
          checkpoint: '7dcfb67d06d77cb92a5ca083e5ccc16f11e25d67d579c5e373fb0d78fe0a65d6'
  name 'BitBar'
  homepage 'https://github.com/matryer/bitbar/'
  license :mit

  app 'bitbar.app'
end
