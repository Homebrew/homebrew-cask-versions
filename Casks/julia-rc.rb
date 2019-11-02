cask 'julia-rc' do
  version '1.3.0-rc4'
  sha256 '0e0519f7bfd8965e3658c541abf0c400caa3a3c3e83a38582b873d9af0a092a0'

  url "https:///julialang-s3.julialang.org/bin/mac/x64/#{version.major_minor}/julia-#{version}-mac64.dmg"
  appcast 'https://github.com/JuliaLang/julia/releases.atom'
  name 'Julia'
  homepage 'https://julialang.org/'

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap trash: '~/.julia'
end
