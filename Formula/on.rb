class On < Formula
  desc "A CLI tool to launch your dev environment with one command"
  homepage "https://github.com/rickyshin93/launch"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rickyshin93/launch/releases/download/v0.2.0/on-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "b190fd7f66b4c6dfae1867017d5520e2b56c49c0f8bb9f714387fcd3bd3cbb52"
    end
  end

  def install
    bin.install "on"
  end

  test do
    assert_match "on", shell_output("#{bin}/on --help")
  end
end
