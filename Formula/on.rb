class On < Formula
  desc "A CLI tool to launch your dev environment with one command"
  homepage "https://github.com/rickyshin93/launch"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rickyshin93/launch/releases/download/v0.3.0/on-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "d5a578d16b556d25da24bdd41f328a45caf78aaf461c9ac616af53fa6a31f5e0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rickyshin93/launch/releases/download/v0.3.0/on-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ff1cfbe487e06a968706ff5d476d80eb8ca2a9defb0ba4a1edca00a547366d6"
    end
  end

  def install
    bin.install "on"
  end

  test do
    assert_match "on", shell_output("#{bin}/on --help")
  end
end
