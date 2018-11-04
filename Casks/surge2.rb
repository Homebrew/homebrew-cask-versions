cask 'surge2' do
  version '2.6.5,652'
  sha256 '494e714a508e8ab44612179c26c59d2afa663805973ce1bb5f57ec7a08cb7048'

  url "https://nssurge.com/mac/Surge-#{version.before_comma}-#{version.after_comma}.zip"
  name 'Surge'
  homepage 'https://nssurge.com/'

  app 'Surge.app'
end
