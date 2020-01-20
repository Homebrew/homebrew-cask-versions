cask 'julia-nightly' do
  version '1.5'
  sha256 :no_check # required as upstream package is updated in-place

  url 'https://julialangnightlies-s3.julialang.org/bin/mac/x64/julia-latest-mac64.dmg'
  name 'Julia'
  homepage 'https://julialang.org/'

  app "Julia-#{version}.app"
  binary "#{appdir}/Julia-#{version}.app/Contents/Resources/julia/bin/julia", target: 'julia-nightly'

  zap trash: '~/.julia'
end
