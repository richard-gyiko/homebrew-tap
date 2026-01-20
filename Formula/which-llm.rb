class WhichLlm < Formula
  desc "CLI for querying AI model benchmarks from Artificial Analysis"
  homepage "https://github.com/richard-gyiko/which-llm-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richard-gyiko/which-llm-cli/releases/download/v0.1.0/which-llm-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/richard-gyiko/which-llm-cli/releases/download/v0.1.0/which-llm-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    url "https://github.com/richard-gyiko/which-llm-cli/releases/download/v0.1.0/which-llm-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  def install
    bin.install "which-llm"
  end

  test do
    system "#{bin}/which-llm", "--version"
  end
end
