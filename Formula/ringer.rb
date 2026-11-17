class Ringer < Formula
  desc "Terminal countdown timer that warns you when you won't hear the alarm"
  homepage "https://github.com/Gus-Eisen/ringer"
  url "https://github.com/Gus-Eisen/ringer/releases/download/v0.5.0/ringer-macos.tar.gz"
  sha256 "e67bb2c1743b26caf0194bec2f860e53e52519a0c7138d448d6877968501f075"
  license "MIT"

  depends_on :macos

  def install
    bin.install "ringer"
  end

  test do
    assert_match "ringer #{version}", shell_output("#{bin}/ringer --version")
  end
end
