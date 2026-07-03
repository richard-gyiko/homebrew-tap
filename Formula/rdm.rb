class Rdm < Formula
  desc "Agent-first Redmine CLI with markdown-optimized output"
  homepage "https://github.com/richard-gyiko/redmine-cli"
  version "0.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.6/rdm-aarch64-apple-darwin.tar.gz"
      sha256 "14c11a5082fbceb2b200dd02203d60902ad9353d9fbfae7370fae54c014f3fd5"
    else
      url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.6/rdm-x86_64-apple-darwin.tar.gz"
      sha256 "0edfaab49271cb62279f738a4bb0e631670a7b53ced6cb1459ad57cecd795577"
    end
  end

  on_linux do
    url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.6/rdm-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0d564ca41863ad08651445669528ecaccfd6949d53a2d1fb1a284660d37e30f7"
  end

  def install
    bin.install "rdm"
  end

  test do
    system "#{bin}/rdm", "--version"
  end
end
