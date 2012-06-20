require 'formula'

class ParrotDev < Formula
  head 'https://github.com/parrot/parrot.git'
  url 'ftp://ftp.parrot.org/pub/parrot/releases/devel/4.5.0/parrot-4.5.0.tar.bz2'
  sha256 '74996076eb9dbe0f2442e0ae9c0cb5c3e9d5f49a266368eee01f4ab30c6d2808'
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
