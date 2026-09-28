class Rdm < Formula
  desc "Agent-first Redmine CLI with markdown-optimized output"
  homepage "https://github.com/richard-gyiko/redmine-cli"
  version "0.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.7/rdm-aarch64-apple-darwin.tar.gz"
      sha256 "7a47f4c994851a9df9885357cdbbfe5dee4a65a7331b0fb0780762efeb99db3e"
    else
      url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.7/rdm-x86_64-apple-darwin.tar.gz"
      sha256 "75ca663513414becae24320462e1412b35048b8f1ba86668062268eb574e0372"
    end
  end

  on_linux do
    url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.7/rdm-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c8d0e6e1602c4fa693cc37cf6cdc82e075c67d9ea684683badd4c04caa52f4c2"
  end

  def install
    bin.install "rdm"
  end

  test do
    system "#{bin}/rdm", "--version"
  end
end
