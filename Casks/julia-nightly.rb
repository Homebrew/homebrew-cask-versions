cask "julia-nightly" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.10"
  sha256 :no_check

  url "https://julialangnightlies-s3.julialang.org/bin/macos/#{arch}/julia-latest-macos-#{arch}.dmg"
  name "Julia"
  desc "Programming language for technical computing"
  homepage "https://julialang.org/"

  livecheck do
    skip "No reliable version info"
  end

  app "Julia-#{version}.app"
  binary "#{appdir}/Julia-#{version}.app/Contents/Resources/julia/bin/julia", target: "julia-nightly"

  zap trash: "~/.julia"
end
