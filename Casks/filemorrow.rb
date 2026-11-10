cask "filemorrow" do
  version "1.8.0"
  sha256 "3c2e3b6d65fc8ad4771bd1d720169e0f2b91dd5c667a4946797921a17ce6ccbe"

  url "https://github.com/M-Nabeegh/FileMorrow/releases/download/v#{version}/FileMorrow-#{version}-macOS.dmg"
  name "FileMorrow"
  desc "Local-first Downloads organizer with Undo and duplicate cleanup"
  homepage "https://m-nabeegh.github.io/FileMorrow/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "FileMorrow.app"

  zap trash: [
    "~/Library/Application Support/FileMorrow",
    "~/Library/Preferences/com.nabeegh.filemorrow.plist",
  ]

  caveats <<~EOS
    FileMorrow is signed ad hoc and is not notarized by Apple. The first time
    you open it, macOS will say it cannot verify the developer. Open
    System Settings > Privacy & Security and click Open Anyway.
  EOS
end
