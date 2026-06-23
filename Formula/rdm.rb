class Rdm < Formula
  desc "Agent-first Redmine CLI with markdown-optimized output"
  homepage "https://github.com/richard-gyiko/redmine-cli"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.3/rdm-aarch64-apple-darwin.tar.gz"
      sha256 "52bcc377a423bbbc45f105b1bad4ebffdddb1623b2b1849510072e78cadbc7b3"
    else
      url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.3/rdm-x86_64-apple-darwin.tar.gz"
      sha256 "bec7ee1147f179f58e5adb04b2f502eab8c6cb5860b5869ff938cd79a82a0888"
    end
  end

  on_linux do
    url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.3/rdm-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ceab114d4c07c8dc502b6823574e9d9ac025db960df5507c2957435f9664f2ec"
  end

  def install
    bin.install "rdm"
  end

  test do
    system "#{bin}/rdm", "--version"
  end
end
