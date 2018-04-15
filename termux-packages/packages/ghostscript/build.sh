TERMUX_PKG_HOMEPAGE=http://www.ghostscript.com/
TERMUX_PKG_DESCRIPTION="Interpreter for the PostScript language and for PDF"
TERMUX_PKG_VERSION=9.22
TERMUX_PKG_REVISION=1
TERMUX_PKG_SHA256=3f84d8404c840ea62b46b5ebf215dfdb83a20c3ba2419fd6985eb7bce050f007
TERMUX_PKG_SRCURL=https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs${TERMUX_PKG_VERSION//.}/ghostpdl-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_DEPENDS="libandroid-support, libtiff, libjpeg-turbo, libpng, libexpat, freetype, fontconfig, libidn, littlecms, openjpeg"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
ac_cv_lib_lcms2__cmsCreateMutex=yes
CCAUX=gcc
--build=$TERMUX_BUILD_TUPLE
--enable-little-endian
--with-arch_h=$TERMUX_PKG_BUILDER_DIR/arch-${TERMUX_ARCH}.h
--without-pcl
--without-x
--with-system-libtiff
"

termux_step_post_extract_package () {
        rm -rdf $TERMUX_PKG_SRCDIR/{jpeg,libpng,expat,jasper,freetype,lcms2,tiff,openjpeg}
}
