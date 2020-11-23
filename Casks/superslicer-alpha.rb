cask "superslicer-alpha" do
  version "2.3.55.1,20201118"
  sha256 "0fd087faac2c48a2fefe245a99f1d340197e0c534af3de48b4c8ca25f2766eff"

  url "https://github.com/supermerill/SuperSlicer/releases/download/#{version.before_comma}/SuperSlicer_#{version.before_comma}_macos_#{version.after_comma}.dmg"
  appcast "https://github.com/supermerill/SuperSlicer/releases.atom"
  name "superslicer"
  desc "Fork of prusaslicer focused on adding features"
  homepage "https://github.com/supermerill/SuperSlicer"

  app "superslicer.app"
end