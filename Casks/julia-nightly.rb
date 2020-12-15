cask "julia-nightly" do
  version "1.7"
  sha256 :no_check

  url "https://julialangnightlies-s3.julialang.org/bin/mac/x64/julia-latest-mac64.dmg"
  name "Julia"
  homepage "https://julialang.org/"

  app "Julia-#{version}.app"
  binary "#{appdir}/Julia-#{version}.app/Contents/Resources/julia/bin/julia", target: "julia-nightly"

  zap trash: "~/.julia"
end
