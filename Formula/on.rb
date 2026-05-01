class On < Formula
  desc "A CLI tool to launch your dev environment with one command"
  homepage "https://github.com/rickyshin93/on"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rickyshin93/on/releases/download/v0.4.1/on-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "7b176d3cef9c9341a34b91ecf08fc74e4b3d06b6a7e7a4edac1ad5c6964e8cb7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rickyshin93/on/releases/download/v0.4.1/on-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d0c8a492c7b1238a4201e4e02dfb6a5a9a72dbdccf6e05381697ae86711e86f"
    end
  end

  def install
    bin.install "on"
  end

  test do
    assert_match "on", shell_output("#{bin}/on --help")
  end
end
