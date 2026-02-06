class WhichLlm < Formula
  desc "CLI + agent skill for selecting the right LLM based on benchmarks, capabilities, and cost"
  homepage "https://github.com/richard-gyiko/which-llm"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richard-gyiko/which-llm/releases/download/cli/v0.5.1/which-llm-aarch64-apple-darwin.tar.gz"
      sha256 "01e2c9ae90825479a6e4c2344976f83eeb76ebcad4682e55c78658306a165933"
    else
      url "https://github.com/richard-gyiko/which-llm/releases/download/cli/v0.5.1/which-llm-x86_64-apple-darwin.tar.gz"
      sha256 "19e2cb1f294b601a56436b8fbfa4f40d5b4e370e0f814a4e150ff58c71323740"
    end
  end

  on_linux do
    url "https://github.com/richard-gyiko/which-llm/releases/download/cli/v0.5.1/which-llm-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0a3c73adc42259bf573832ef0eb74a653bd1f9cee3bebdf98467a8efc166433c"
  end

  def install
    bin.install "which-llm"
  end

  test do
    system "#{bin}/which-llm", "--version"
  end
end
