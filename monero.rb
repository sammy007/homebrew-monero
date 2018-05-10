require "formula"

class Monero < Formula
  desc "Monero: the secure, private, untraceable cryptocurrency"
  homepage "https://getmonero.org"

  url "https://github.com/monero-project/monero/archive/v0.12.0.0.tar.gz"
  sha256 "5e8303900a39e296c4ebaa41d957ab9ee04e915704e1049f82a9cbd4eedc8ffb"

  depends_on "cmake" => :build
  depends_on "pkgconfig" => :build
  depends_on "boost"
  depends_on "libevent"
  depends_on "readline"
  depends_on "zeromq"
  depends_on "unbound"

  resource "cppzmq" do
    url "https://raw.githubusercontent.com/zeromq/cppzmq/7a8cc9d7cf448b8fd654ec4cd24fd48b57a76162/zmq.hpp"
    sha256 "eeccec908d78bc195d093fb05a37271b3f7a62ec65b026b6f0b8d801d9b966da"
  end

  patch :p1 do
    url "https://raw.githubusercontent.com/sammy007/homebrew-monero/master/boost_fix.diff"
    sha256 "228c2c2f9f2b42c3c62e7c27c91ad04459448e4aad6bb0355e2dcc733f8cc8df"
  end

  def install
    resource("cppzmq").stage include.to_s

    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
