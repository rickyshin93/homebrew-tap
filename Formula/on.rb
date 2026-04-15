class On < Formula
  desc "A CLI tool to launch your dev environment with one command"
  homepage "https://github.com/rickyshin93/launch"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rickyshin93/launch/releases/download/v0.3.1/on-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "d02fa73b710dc4c0e8b95db58b05245fe9c96c879057086fc105a8bc54fcd505"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rickyshin93/launch/releases/download/v0.3.1/on-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a62b3b4c7152e484e3720a0e16da484bdce05aa66fa75bd855dd2ebb65b325e"
    end
  end

  def install
    bin.install "on"
  end

  test do
    assert_match "on", shell_output("#{bin}/on --help")
  end
end
