class On < Formula
  desc "A CLI tool to launch your dev environment with one command"
  homepage "https://github.com/rickyshin93/launch"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rickyshin93/launch/releases/download/v0.2.1/on-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "22b36f5e5d6bd8fa444dc4a5a1e7e2260007ce1b94da737aac0ed46daba13feb"
    end
  end

  def install
    bin.install "on"
  end

  test do
    assert_match "on", shell_output("#{bin}/on --help")
  end
end
