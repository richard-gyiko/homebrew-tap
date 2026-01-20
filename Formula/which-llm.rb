class WhichLlm < Formula
  desc "CLI for querying AI model benchmarks from Artificial Analysis"
  homepage "https://github.com/richard-gyiko/which-llm-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richard-gyiko/which-llm-cli/releases/download/v0.3.0/which-llm-aarch64-apple-darwin.tar.gz"
      sha256 "6a3d0ee7a6e48726db87fd117f0c38228997ab6c79423d6c4d5195ca26680a55"
    else
      url "https://github.com/richard-gyiko/which-llm-cli/releases/download/v0.3.0/which-llm-x86_64-apple-darwin.tar.gz"
      sha256 "3dd2e02d6238cd0a717abf3fe2c3c434a1f8cfa20c77afc7bdf89cbde55d95aa"
    end
  end

  on_linux do
    url "https://github.com/richard-gyiko/which-llm-cli/releases/download/v0.3.0/which-llm-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "226b6a4b867490570568c15837b518c209e5c7709fbd379d34b9003f72479794"
  end

  def install
    bin.install "which-llm"
  end

  test do
    system "#{bin}/which-llm", "--version"
  end
end
