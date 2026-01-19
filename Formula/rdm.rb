class Rdm < Formula
  desc "Agent-first Redmine CLI with markdown-optimized output"
  homepage "https://github.com/richard-gyiko/redmine-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.1.2/rdm-aarch64-apple-darwin.tar.gz"
      sha256 "a12c21c0921fe60c2c511f63422ce6bda6f136a8109dd96f506f49a662aa28e7"
    else
      url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.1.2/rdm-x86_64-apple-darwin.tar.gz"
      sha256 "c9c6cb70bd7f1483bcb63f1e587b4ecf3f8d9c0c9cc6f1e6916d1cd13cee204a"
    end
  end

  on_linux do
    url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.1.2/rdm-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2f6a8b5fb9f238555fd901201e199eb12cb9c37ff696c635fa65bc0760c83918"
  end

  def install
    bin.install "rdm"
  end

  test do
    system "#{bin}/rdm", "--version"
  end
end
