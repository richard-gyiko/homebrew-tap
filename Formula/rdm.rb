class Rdm < Formula
  desc "Agent-first Redmine CLI with markdown-optimized output"
  homepage "https://github.com/richard-gyiko/redmine-cli"
  version "0.1.1"
  license "MIT"

  # Note: Only Linux binary available currently (musl build)
  on_linux do
    url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.1.1/rdm-x86_64-unknown-linux-musl.tar.gz"
    sha256 "83689e43ef70cb6478cf6d6dd6ae855ad9a29cd5d3c02f2d5ceb672375a7254b"
  end

  # macOS builds not yet available
  on_macos do
    odie "rdm is not yet available for macOS. See: https://github.com/richard-gyiko/redmine-cli/issues"
  end

  def install
    bin.install "rdm"
  end

  test do
    system "#{bin}/rdm", "--version"
  end
end
