class Ringer < Formula
  desc "Terminal countdown timer that warns you when you won't hear the alarm"
  homepage "https://github.com/Gus-Eisen/ringer"
  url "https://github.com/Gus-Eisen/ringer/releases/download/v0.4.0/ringer-macos.tar.gz"
  version "0.4.0"
  sha256 "b1561f0ecaa4f2b07e5d9520ab8e5fb3075e94e185a93f286d980bd264841ea8"
  license "MIT"

  depends_on :macos

  def install
    bin.install "ringer"
  end

  test do
    assert_match "ringer #{version}", shell_output("#{bin}/ringer --version")
  end
end
