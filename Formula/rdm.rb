class Rdm < Formula
  desc "Agent-first Redmine CLI with markdown-optimized output"
  homepage "https://github.com/richard-gyiko/redmine-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.1/rdm-aarch64-apple-darwin.tar.gz"
      sha256 "ddcac4843cb9cade1aab2b797f81f5abf4e5c2f10eddf2d10304e9ec0a4092eb"
    else
      url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.1/rdm-x86_64-apple-darwin.tar.gz"
      sha256 "bead735722644fd2fbb5d970683753edc415e6fcdcac00a8bb82748fef40c986"
    end
  end

  on_linux do
    url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.1/rdm-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "24b8e65216560a505ba48b0a9d9b5389009d1cfd671731486a824cffe98b50b8"
  end

  def install
    bin.install "rdm"
  end

  test do
    system "#{bin}/rdm", "--version"
  end
end
