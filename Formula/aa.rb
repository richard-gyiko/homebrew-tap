class Aa < Formula
  desc "CLI for querying AI model benchmarks from Artificial Analysis"
  homepage "https://github.com/richard-gyiko/artificial-analysis-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richard-gyiko/artificial-analysis-cli/releases/download/v0.1.0/aa-aarch64-apple-darwin.tar.gz"
      sha256 "be0a5597597ec490fc6e55d3c7b1e041314bc1ead18392fd19cd63f3262c42ae"
    else
      url "https://github.com/richard-gyiko/artificial-analysis-cli/releases/download/v0.1.0/aa-x86_64-apple-darwin.tar.gz"
      sha256 "1aef249737be2f24f01e6beb8b1d8b6bb6dbf0977b6b517bd132d5639cd4984d"
    end
  end

  on_linux do
    url "https://github.com/richard-gyiko/artificial-analysis-cli/releases/download/v0.1.0/aa-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c6597ccfaddcd4ac2925aa800ed477c15306b73254a587527b6e13c26202df4c"
  end

  def install
    bin.install "aa"
  end

  test do
    system "#{bin}/aa", "--version"
  end
end
