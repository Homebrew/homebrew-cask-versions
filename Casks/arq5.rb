cask "arq5" do
  version "5.19.2"
  sha256 "d35bbf168b808372a25ea63159c824e54781860b7cd848d0decfa2b674a0bc6f"

  url "https://www.arqbackup.com/download/arqbackup/Arq_#{version}.zip"
  name "Arq"
  homepage "https://www.arqbackup.com/"

  auto_updates true
  conflicts_with cask: "arq"

  app "Arq.app"
end
