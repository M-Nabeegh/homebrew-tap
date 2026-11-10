cask "nabbar" do
  version "1.1.0"
  sha256 "71e5914bf329965a2eaa67446ba040f8cb98b853651ab87903b8b692ab83d980"

  url "https://github.com/M-Nabeegh/NabBar/releases/download/v#{version}/NabBar.dmg"
  name "NabBar"
  desc "Codex, Claude and Command Code limits in the menu bar"
  homepage "https://m-nabeegh.github.io/NabBar/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "NabBar.app"

  zap trash: [
    "~/.nabbar",
    "~/Library/Logs/NabBar",
    "~/Library/Preferences/com.nabeegh.nabbar.plist",
  ]

  caveats <<~EOS
    NabBar is signed ad hoc and is not notarized by Apple. The first time you
    open it, macOS will say it cannot verify the developer. Open
    System Settings > Privacy & Security and click Open Anyway.
  EOS
end
