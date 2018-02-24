cask 'julia-nightly' do
  version '0.7.0-e4b6677561'
  sha256 '8065e24f0a5292d0a26b9ea4ca50de623960450b69bdc1888b041ae73c8956a2'

  url 'https://julialangnightlies-s3.julialang.org/bin/mac/x64/julia-latest-mac64.dmg'
  name 'Julia'
  homepage 'https://julialang.org/'

  depends_on macos: '>= :mountain_lion'

  app "Julia-#{version.sub(%r{(.+)-(.+)}, '\1-DEV-\2')}.app"
  binary "#{appdir}/Julia-#{version.sub(%r{(.+)-(.+)}, '\1-DEV-\2')}.app/Contents/Resources/julia/bin/julia"

  zap trash: '~/.julia'
end
