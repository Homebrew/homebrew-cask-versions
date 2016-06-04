cask 'julia-nightly' do
  version '0.5.0-cca635b0e8'
  sha256 '1b1d769114ca87a55e0a6638a4c9d881fb6aae09ede9bb52f9e0c4ea684632e0'

  # amazonaws.com is the official download host per vendor homepage
  url "https://s3.amazonaws.com/julianightlies/bin/osx/x64/#{version.sub(%r{(\d+\.\d+).*}, '\1')}/julia-#{version}-osx.dmg"
  name 'Julia'
  homepage 'http://julialang.org'
  license :mit

  depends_on macos: '>= :lion'

  app "Julia-#{version.sub(%r{(.+)-(.+)}, '\1-dev-\2')}.app"
  binary "#{appdir}/Julia-#{version.sub(%r{(.+)-(.+)}, '\1-dev-\2')}.app/Contents/Resources/julia/bin/julia"

  zap delete: '~/.julia'
end
