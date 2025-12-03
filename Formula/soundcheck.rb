class Soundcheck < Formula
  desc "Terminal-based audio monitoring application"
  homepage "https://github.com/isfopo/soundcheck"
  url "https://github.com/isfopo/soundcheck/releases/download/0.0.15/soundcheck-x86_64-apple-darwin.tar.gz"
  sha256 "d35e34d71a35949744b795803baccde0b26a75c6342886298c1b56c2f6024e0c"
  version "0.0.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/isfopo/soundcheck/releases/download/0.0.15/soundcheck-aarch64-apple-darwin.tar.gz"
      sha256 "71b2aa87c20fde8e267cc016b0a4eacb043a243dec507a5ef78fc2eb7583a78d"
    end
  end

  def install
    bin.install "soundcheck"
  end

  test do
    system "#{bin}/soundcheck", "--help"
  end
end
