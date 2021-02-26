cask "arq5" do
  version "5.21.1"
  sha256 "e43c4036dc963c39893d80fdd057aaa5fd801bd306f02f54191b9ce21e25574c"

  url "https://www.arqbackup.com/download/arqbackup/Arq_#{version}.zip"
  name "Arq"
  homepage "https://www.arqbackup.com/"

  auto_updates true
  conflicts_with cask: "arq"

  app "Arq.app"
end
