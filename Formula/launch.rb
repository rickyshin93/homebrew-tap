class Launch < Formula
  desc "A CLI tool to launch your dev environment with one command"
  homepage "https://github.com/rickyshin93/launch"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rickyshin93/launch/releases/download/v0.1.0/launch-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "e20483491dcad336145093df152ac849bc4028b67001ad185a3aef9ce7e06d4f"
    end
  end

  def install
    bin.install "launch"
  end

  test do
    assert_match "launch", shell_output("#{bin}/launch --help")
  end
end
