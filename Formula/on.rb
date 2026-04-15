class On < Formula
  desc "A CLI tool to launch your dev environment with one command"
  homepage "https://github.com/rickyshin93/launch"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rickyshin93/launch/releases/download/v0.3.3/on-v0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "cb49d29d2433bc78f63fb97a8465b336df2737b807f3876261675dfcb9b14a35"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rickyshin93/launch/releases/download/v0.3.3/on-v0.3.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b420a0e3f7c43a679a8452107facd2481ccb39d75c5902a30469547c25289b2c"
    end
  end

  def install
    bin.install "on"
  end

  test do
    assert_match "on", shell_output("#{bin}/on --help")
  end
end
