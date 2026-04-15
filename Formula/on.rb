class On < Formula
  desc "A CLI tool to launch your dev environment with one command"
  homepage "https://github.com/rickyshin93/launch"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rickyshin93/launch/releases/download/v0.3.2/on-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "8738b1a2ef3311bcdc3e59eb9d18d2a50a648b8c6342b6462e4090d2aa05880f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rickyshin93/launch/releases/download/v0.3.2/on-v0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e4a7bdabdecff142bc96c1dcd51ea5a57422785cc8b6ec107dc6dc44932c094f"
    end
  end

  def install
    bin.install "on"
  end

  test do
    assert_match "on", shell_output("#{bin}/on --help")
  end
end
