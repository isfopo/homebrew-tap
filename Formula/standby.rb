class Standby < Formula
  desc "Terminal-based audio monitoring application"
  homepage "https://github.com/isfopo/standby"
  url "https://github.com/isfopo/standby/releases/download/v0.1.0/standby-x86_64-apple-darwin.tar.gz"
  sha256 "placeholder-sha256"
  version "0.1.0"

  def install
    bin.install "standby"
  end

  test do
    system "#{bin}/standby", "--help"
  end
end
