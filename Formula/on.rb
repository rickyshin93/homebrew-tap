class On < Formula
  desc "A CLI tool to launch your dev environment with one command"
  homepage "https://github.com/rickyshin93/on"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rickyshin93/on/releases/download/v0.4.2/on-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "4ee7e2520005b24c20fd104f3d6cd90637f75f27ab5c0a9250c01d70ca36f556"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rickyshin93/on/releases/download/v0.4.2/on-v0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1663658f52a1158c4300ca4fdc33578aa46770270ed887dc84ddc3d57bcc6e79"
    end
  end

  def install
    bin.install "on"
  end

  test do
    assert_match "on", shell_output("#{bin}/on --help")
  end
end
