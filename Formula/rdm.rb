class Rdm < Formula
  desc "Agent-first Redmine CLI with markdown-optimized output"
  homepage "https://github.com/richard-gyiko/redmine-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.2/rdm-aarch64-apple-darwin.tar.gz"
      sha256 "1cdec297df1c28461a0c4f90af30e09aa51fccac8eb5717c8f8ee4fe041db487"
    else
      url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.2/rdm-x86_64-apple-darwin.tar.gz"
      sha256 "d9ba4fab5f9266bb135c66a3d96669b6dfa8eb84d74b922fc521d1fe57b15b90"
    end
  end

  on_linux do
    url "https://github.com/richard-gyiko/redmine-cli/releases/download/v0.2.2/rdm-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c1f0151bd7a6db13b1206df43c7c476a490062427d56a199e322ef1e3377e3c9"
  end

  def install
    bin.install "rdm"
  end

  test do
    system "#{bin}/rdm", "--version"
  end
end
