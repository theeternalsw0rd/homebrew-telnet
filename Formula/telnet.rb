class Telnet < Formula
  desc "Telnet client ported from OpenBSD"
  homepage "https://github.com/theeternalsw0rd/telnet-macos"
  url "https://github.com/theeternalsw0rd/telnet-macos/archive/1.2.tar.gz"
  mirror "https://archive.org/download/telnet-1.2.tar/telnet-1.2.tar.gz"
  version "1.2"
  sha256 "f3fd22ac1c75dbf0a742aeb2ea893ed89aa433bc6311fbb8cef8c6b047f18cb7"
  revision 1

  def install

    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"

  end

  test do
    assert_equal "1.2\n",
      shell_output("#{bin}/telnet -v")
  end
end
