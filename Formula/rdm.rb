class Rdm < Formula
  desc "Agent-first Redmine CLI with markdown-optimized output"
  homepage "https://github.com/richard-gyiko/redmine-cli"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.4/rdm-aarch64-apple-darwin.tar.gz"
      sha256 "20dfea29bcb697c5046383aa6568fd4f44aad7069f12424401c89e018fd4c5b8"
    else
      url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.4/rdm-x86_64-apple-darwin.tar.gz"
      sha256 "fc2703cc2d9403f15004f5c8b554e2b0a953ee1ec3bce6e30b6f551448b11564"
    end
  end

  on_linux do
    url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.4/rdm-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "788946260b64f80b67b7f3af972220e5d0c160e4944c530f2cb205e8f514e275"
  end

  def install
    bin.install "rdm"
  end

  test do
    system "#{bin}/rdm", "--version"
  end
end
