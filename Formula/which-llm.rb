class WhichLlm < Formula
  desc "CLI + agent skill for selecting the right LLM based on benchmarks, capabilities, and cost"
  homepage "https://github.com/richard-gyiko/which-llm"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richard-gyiko/which-llm/releases/download/cli/v0.6.0/which-llm-aarch64-apple-darwin.tar.gz"
      sha256 "1cf86f6473a3341d5bb13d0a3ff86e8abf3f6aaa9ddb8988f27e47d7245032c3"
    else
      url "https://github.com/richard-gyiko/which-llm/releases/download/cli/v0.6.0/which-llm-x86_64-apple-darwin.tar.gz"
      sha256 "6ebefe5e8aaa703be3c67be8e1e2b929bbe07bf4d62a923296c15598fb9c6cad"
    end
  end

  on_linux do
    url "https://github.com/richard-gyiko/which-llm/releases/download/cli/v0.6.0/which-llm-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "13c7107f67f74f34bd7b1e6691f66d8db945a6e53d9f1a42bb6b03ed15282fa8"
  end

  def install
    bin.install "which-llm"
  end

  test do
    system "#{bin}/which-llm", "--version"
  end
end
