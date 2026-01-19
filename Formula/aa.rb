class Aa < Formula
  desc "CLI for querying AI model benchmarks from Artificial Analysis"
  homepage "https://github.com/richard-gyiko/artificial-analysis-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richard-gyiko/artificial-analysis-cli/releases/download/v0.1.1/aa-aarch64-apple-darwin.tar.gz"
      sha256 "c9c0cf76e137cf7dbc147cc179ca200c6574480085547a35a2bde03e15fedadf"
    else
      url "https://github.com/richard-gyiko/artificial-analysis-cli/releases/download/v0.1.1/aa-x86_64-apple-darwin.tar.gz"
      sha256 "8c418919b852fb7ccf141cd24c319f6b1d1a8a8b3a8eef12759b0a1ad7250fc2"
    end
  end

  on_linux do
    url "https://github.com/richard-gyiko/artificial-analysis-cli/releases/download/v0.1.1/aa-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c1d172e46903d7a5349c8f616bf056bea505b909d4378a8789321a40cf13c2cf"
  end

  def install
    bin.install "aa"
  end

  test do
    system "#{bin}/aa", "--version"
  end
end
