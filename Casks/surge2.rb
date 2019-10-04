cask 'surge2' do
  version '2.6.7,656'
  sha256 '6689cea266fb0b45e5272ef6b8bc76fbd111b438511243a929af9391a868cb2f'

  url "https://nssurge.com/mac/Surge-#{version.before_comma}-#{version.after_comma}.zip"
  name 'Surge'
  homepage 'https://nssurge.com/'

  app 'Surge.app'
end
