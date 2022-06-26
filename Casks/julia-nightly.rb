cask "julia-nightly" do
  version "1.10"
  sha256 :no_check

  url "https://julialangnightlies-s3.julialang.org/bin/mac/x64/julia-latest-mac64.dmg"
  name "Julia"
  desc "Programming language for technical computing"
  homepage "https://julialang.org/"

  livecheck do
    skip "unversioned URL"
  end

  app "Julia-#{version}.app"
  binary "#{appdir}/Julia-#{version}.app/Contents/Resources/julia/bin/julia", target: "julia-nightly"

  zap trash: "~/.julia"
end
