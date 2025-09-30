cask "rpcs3" do
  version "v0.0.37-18159"
  sha256 "73696A44D4477C184BAF41A9DB69448DF417657C3C099EB144BB5ACBEEDAB91F" 

  url "https://github.com/RPCS3/rpcs3-binaries-mac/releases/download/build-6fe6c4e0f62d941a7056fcef5cb44d2339d725ed/rpcs3-v0.0.37-18159-6fe6c4e0_macos.7z",
      verified: "github.com/RPCS3/"
  name "RPCS3"
  desc "Open-source PlayStation 3 emulator"
  homepage "https://rpcs3.net/"

  app "RPCS3.app"

  zap trash: [
    "~/Library/Application Support/rpcs3",
    "~/Library/Saved Application State/net.rpcs3.rpcs3.savedState",
  ]
end
