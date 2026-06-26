class Rdm < Formula
  desc "Agent-first Redmine CLI with markdown-optimized output"
  homepage "https://github.com/richard-gyiko/redmine-cli"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.5/rdm-aarch64-apple-darwin.tar.gz"
      sha256 "0b3e27cdde292b5a21a4e5de8189f2c9f415e3dae05e9596b415a01f594d1334"
    else
      url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.5/rdm-x86_64-apple-darwin.tar.gz"
      sha256 "4bf3461e4f196f4bdd282322325a60991efe60cca6ca0d9e7f5c5dabc21cdefe"
    end
  end

  on_linux do
    url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.5/rdm-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "01049d3720287ce4c4f5a3cb074293c89de060eb656cc80e4eed162e9c89c322"
  end

  def install
    bin.install "rdm"
  end

  test do
    system "#{bin}/rdm", "--version"
  end
end
