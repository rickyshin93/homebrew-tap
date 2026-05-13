class On < Formula
  desc "A CLI tool to launch your dev environment with one command"
  homepage "https://github.com/rickyshin93/on"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rickyshin93/on/releases/download/v0.6.0/on-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "e861bd3b59d0dd33893f87948c518b2063498f071a8109bc9127a6f3a5f30fea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rickyshin93/on/releases/download/v0.6.0/on-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1036730d69ecb40dea16226ed7f99064ecd3d8ed4ebf8f260e5337f7d028776b"
    end
  end

  def install
    bin.install "on"
  end

  test do
    assert_match "on", shell_output("#{bin}/on --help")
  end
end
