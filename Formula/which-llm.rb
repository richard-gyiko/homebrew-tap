class WhichLlm < Formula
  desc "CLI + agent skill for selecting the right LLM based on benchmarks, capabilities, and cost"
  homepage "https://github.com/richard-gyiko/which-llm"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richard-gyiko/which-llm/releases/download/cli/v0.7.0/which-llm-aarch64-apple-darwin.tar.gz"
      sha256 "58acdb7ce0e41059b6619878d561e3db13d4b34b1a6c2e3cca912b700be7e930"
    else
      url "https://github.com/richard-gyiko/which-llm/releases/download/cli/v0.7.0/which-llm-x86_64-apple-darwin.tar.gz"
      sha256 "0668ee09faec35bb430756245eb45b509ff2c04ec42252c59148df11e0b212dc"
    end
  end

  on_linux do
    url "https://github.com/richard-gyiko/which-llm/releases/download/cli/v0.7.0/which-llm-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "10a86f4d96ec78e42330351b27a2c2ee83d941e719fcfa4f5c4ea6c43b1c1e61"
  end

  def install
    bin.install "which-llm"
  end

  test do
    system "#{bin}/which-llm", "--version"
  end
end
