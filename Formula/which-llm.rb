class WhichLlm < Formula
  desc "CLI for querying AI model benchmarks from Artificial Analysis"
  homepage "https://github.com/richard-gyiko/which-llm-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richard-gyiko/which-llm-cli/releases/download/v0.2.0/which-llm-aarch64-apple-darwin.tar.gz"
      sha256 "6496c9f20c71a3cef10bcd0788383212c36227c739f57e93a35e8a7f3caabf51"
    else
      url "https://github.com/richard-gyiko/which-llm-cli/releases/download/v0.2.0/which-llm-x86_64-apple-darwin.tar.gz"
      sha256 "d8710f399fa137dfdd92fb9a241c6c6ef5117ae177467f7f50e60938704f8c8d"
    end
  end

  on_linux do
    url "https://github.com/richard-gyiko/which-llm-cli/releases/download/v0.2.0/which-llm-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4d8783dcf9e11901b6413243b66f56926415830b0d9be11d016592662a83d08a"
  end

  def install
    bin.install "which-llm"
  end

  test do
    system "#{bin}/which-llm", "--version"
  end
end
