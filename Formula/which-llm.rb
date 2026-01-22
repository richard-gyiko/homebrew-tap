class WhichLlm < Formula
  desc "CLI for querying AI model benchmarks from Artificial Analysis"
  homepage "https://github.com/richard-gyiko/which-llm-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richard-gyiko/which-llm-cli/releases/download/v0.5.0/which-llm-aarch64-apple-darwin.tar.gz"
      sha256 "3a2545787394cdd90b8b08636dfda614b390be66ffbec80c069130eaedf0db74"
    else
      url "https://github.com/richard-gyiko/which-llm-cli/releases/download/v0.5.0/which-llm-x86_64-apple-darwin.tar.gz"
      sha256 "d204d8759f026969fc3cfb611f74505dfaa34412dc35205891b5dbd0722100f6"
    end
  end

  on_linux do
    url "https://github.com/richard-gyiko/which-llm-cli/releases/download/v0.5.0/which-llm-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c774dc7c4ea4402d77fffe17637ae2229b3799c2e62b69ca92ba95399d2b8a0e"
  end

  def install
    bin.install "which-llm"
  end

  test do
    system "#{bin}/which-llm", "--version"
  end
end
