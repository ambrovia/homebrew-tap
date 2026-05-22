cask "hyperidle" do
  version "0.1.0"
  url "https://github.com/ambrovia/hyperidle-releases/releases/download/v#{version}/HyperIdle-#{version}-arm64.dmg"
  sha256 "c9b965d75fcf2b090152b05f34ebd372305988d39aafed8d6a0bbf191c680941"

  name "HyperIdle"
  desc "Agentic operating system for AI product teams"
  homepage "https://hyperidle.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "HyperIdle.app"

  zap trash: [
    "~/Library/Application Support/HyperIdle",
    "~/Library/Logs/HyperIdle",
    "~/Library/Preferences/com.hyperidle.app.plist",
    "~/Library/Saved Application State/com.hyperidle.app.savedState",
  ]
end
