class On < Formula
  desc "A CLI tool to launch your dev environment with one command"
  homepage "https://github.com/rickyshin93/on"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rickyshin93/on/releases/download/v0.4.0/on-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "c53a74abe44513f8f379cff5c6a45e461e0ed6293f690a699bdf1e6a9c6c87a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rickyshin93/on/releases/download/v0.4.0/on-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "18de34f670a649ba944698159b71a90d30ba49f191e7cb8a9839d1fb70069eed"
    end
  end

  def install
    bin.install "on"
  end

  test do
    assert_match "on", shell_output("#{bin}/on --help")
  end
end
