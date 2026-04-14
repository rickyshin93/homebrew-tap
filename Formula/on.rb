class On < Formula
  desc "A CLI tool to launch your dev environment with one command"
  homepage "https://github.com/rickyshin93/launch"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rickyshin93/launch/releases/download/v0.2.2/on-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "5ca87a85e7760ba574a389d03f5d835d55452bcaac0e5392cdf9e53684752016"
    end
  end

  def install
    bin.install "on"
  end

  test do
    assert_match "on", shell_output("#{bin}/on --help")
  end
end
