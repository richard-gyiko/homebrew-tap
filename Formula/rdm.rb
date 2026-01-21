class Rdm < Formula
  desc "Agent-first Redmine CLI with markdown-optimized output"
  homepage "https://github.com/richard-gyiko/redmine-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.0/rdm-aarch64-apple-darwin.tar.gz"
      sha256 "0135cc64809e4431b517db57b7cad837a822f9d0f5a635712e910642655e6b88"
    else
      url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.0/rdm-x86_64-apple-darwin.tar.gz"
      sha256 "e1485b64e9274651b33b6ee3fc2bc6cf6fb29247fd77068204f9f100cf990670"
    end
  end

  on_linux do
    url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.0/rdm-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2b082e262fd46921d79b1731af55cfa4faeae53cceffd3db62e0da9356a3626c"
  end

  def install
    bin.install "rdm"
  end

  test do
    system "#{bin}/rdm", "--version"
  end
end
