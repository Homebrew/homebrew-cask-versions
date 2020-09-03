cask "opera-beta" do
  version "71.0.3770.97"
  sha256 "cce655e115b5745dea88215da417b3903e44899f680403ca169b3c5f2aa3a04d"

  url "https://get.geo.opera.com/pub/opera-beta/#{version}/mac/Opera_beta_#{version}_Setup.dmg"
  name "Opera Beta"
  homepage "https://www.opera.com/computer/beta"

  auto_updates true

  app "Opera Beta.app"
end
