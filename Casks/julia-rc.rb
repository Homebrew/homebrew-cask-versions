cask 'julia-rc' do
  version '1.4.0-rc1'
  sha256 '7cb93421ace68be7a51734d803dfda21945b94e4d7bff6db9e1baab680dc1c5b'

  url "https://julialang-s3.julialang.org/bin/mac/x64/#{version.major_minor}/julia-#{version}-mac64.dmg"
  appcast 'https://github.com/JuliaLang/julia/releases.atom'
  name 'Julia'
  homepage 'https://julialang.org/'

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia", target: 'julia-rc'

  zap trash: '~/.julia'
end
