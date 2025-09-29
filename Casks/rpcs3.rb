cask "rpcs3" do
  version "v0.0.37-18159"
  sha256 "73696a44d4477c184baf41a9db69448df417657c3c099eb144bb5acbeedab91f" 

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
