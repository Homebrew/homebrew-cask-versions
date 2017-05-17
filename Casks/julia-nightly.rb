cask 'julia-nightly' do
  version '0.7.0-ecf10a2092'
  sha256 '0399589efd9f97bce46af90eb1ae17b25e346c965f9a93b86f945ace622f1229'

  # amazonaws.com/julianightlies was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/julianightlies/bin/osx/x64/#{version.sub(%r{(\d+\.\d+).*}, '\1')}/julia-#{version}-osx.dmg"
  name 'Julia'
  homepage 'https://julialang.org/'

  depends_on macos: '>= :lion'

  app "Julia-#{version.sub(%r{(.+)-(.+)}, '\1-dev-\2')}.app"
  binary "#{appdir}/Julia-#{version.sub(%r{(.+)-(.+)}, '\1-dev-\2')}.app/Contents/Resources/julia/bin/julia"

  zap delete: '~/.julia'
end
