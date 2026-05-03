class On < Formula
  desc "A CLI tool to launch your dev environment with one command"
  homepage "https://github.com/rickyshin93/on"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rickyshin93/on/releases/download/v0.5.0/on-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "9d0c48dbcb4186777a0187b937cf3a937743fad21cb29f8de3363f56669fb4f7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rickyshin93/on/releases/download/v0.5.0/on-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3acfac0cb9585a557276b69fedde2404a9147458ebdf686dd7f0b002e32823ac"
    end
  end

  def install
    bin.install "on"
  end

  test do
    assert_match "on", shell_output("#{bin}/on --help")
  end
end
