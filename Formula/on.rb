class On < Formula
  desc "A CLI tool to launch your dev environment with one command"
  homepage "https://github.com/rickyshin93/on"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rickyshin93/on/releases/download/v0.6.1/on-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "730bc7fca4671ebaff4cb9b14c318a54720d407b93c2e86f95c946f69b0c7520"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rickyshin93/on/releases/download/v0.6.1/on-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9742cca37a6691aa758d505cb9ba1d5929379d8fda3a236ca92c4583e714fea0"
    end
  end

  def install
    bin.install "on"
  end

  test do
    assert_match "on", shell_output("#{bin}/on --help")
  end
end
