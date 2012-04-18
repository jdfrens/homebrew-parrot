require 'formula'

class ParrotDev < Formula
  head 'https://github.com/parrot/parrot.git'
  url 'ftp://ftp.parrot.org/pub/parrot/releases/stable/4.3.0/parrot-4.3.0.tar.bz2'
  sha256 '5c3f5ba2de06f6adb53b7835374a4f3e0601ec63e8a1d1dba6c6a07e12cc2990'
  homepage 'http://www.parrot.org/'

  depends_on 'gmp' => :optional
  depends_on 'icu4c' => :optional
  depends_on 'pcre' => :optional

  def install
    system "perl", "Configure.pl", "--prefix=#{prefix}",
                                   "--debugging=0",
                                   "--cc=#{ENV.cc}"

    system "make"
    system "make install"
  end
end
