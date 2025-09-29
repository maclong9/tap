cask "ryujinx" do
  version "1.3.2"

  url "https://git.ryujinx.app/api/v4/projects/1/packages/generic/Ryubing/#{version}/ryujinx-#{version}-macos_universal.app.tar.gz"
  name "Ryujinx"
  desc "Experimental Nintendo Switch emulator"
  homepage "https://ryujinx.org/"

  app "Ryujinx.app"

  zap trash: [
    "~/Library/Application Support/Ryujinx",
    "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState",
  ]
end

