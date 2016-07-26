cask 'julia-nightly' do
  version '0.5.0-fa5af23773'
  sha256 'fc0bf2e2c45ff6274b0b75c0406d7c2290829dbc85ea42e4393e1ae409a6a901'

  # amazonaws.com/julianightlies was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/julianightlies/bin/osx/x64/#{version.sub(%r{(\d+\.\d+).*}, '\1')}/julia-#{version}-osx.dmg"
  name 'Julia'
  homepage 'http://julialang.org'
  license :mit

  depends_on macos: '>= :lion'

  app "Julia-#{version.sub(%r{(.+)-(.+)}, '\1-dev-\2')}.app"
  binary "#{appdir}/Julia-#{version.sub(%r{(.+)-(.+)}, '\1-dev-\2')}.app/Contents/Resources/julia/bin/julia"

  zap delete: '~/.julia'
end
