require 'formula'

class ParrotDev < Formula
  head 'https://github.com/parrot/parrot.git'
  url 'ftp://ftp.parrot.org/pub/parrot/releases/devel/4.4.0/parrot-4.4.0.tar.bz2'
  sha256 '348ce13fc136afc74a7b50b094f64d8cb00f83f0cd3d59acc6fa4e63c824fa4d'
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
