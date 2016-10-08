cask 'julia-nightly' do
  version '0.6.0-d3df8e7c10'
  sha256 '30ea165dea1aee7dbc8a8b82494216c7ced74fd4156e19f9fea693ee3f190146'

  # amazonaws.com/julianightlies was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/julianightlies/bin/osx/x64/#{version.sub(%r{(\d+\.\d+).*}, '\1')}/julia-#{version}-osx.dmg"
  name 'Julia'
  homepage 'http://julialang.org'

  depends_on macos: '>= :lion'

  app "Julia-#{version.sub(%r{(.+)-(.+)}, '\1-dev-\2')}.app"
  binary "#{appdir}/Julia-#{version.sub(%r{(.+)-(.+)}, '\1-dev-\2')}.app/Contents/Resources/julia/bin/julia"

  zap delete: '~/.julia'
end
