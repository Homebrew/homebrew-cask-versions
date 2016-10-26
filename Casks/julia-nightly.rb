cask 'julia-nightly' do
  version '0.6.0-b7634bec45'
  sha256 '2f40974d477a6e7a78928eb04bd738dcb2a34698f82cac278686c95ccb7f9c65'

  # amazonaws.com/julianightlies was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/julianightlies/bin/osx/x64/#{version.sub(%r{(\d+\.\d+).*}, '\1')}/julia-#{version}-osx.dmg"
  name 'Julia'
  homepage 'http://julialang.org'

  depends_on macos: '>= :lion'

  app "Julia-#{version.sub(%r{(.+)-(.+)}, '\1-dev-\2')}.app"
  binary "#{appdir}/Julia-#{version.sub(%r{(.+)-(.+)}, '\1-dev-\2')}.app/Contents/Resources/julia/bin/julia"

  zap delete: '~/.julia'
end
