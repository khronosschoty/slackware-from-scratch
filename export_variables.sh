#######################  export_variables.sh ###################################
#!/bin/bash
#
# Copyright 2018  J. E. Garrott Sr, Puyallup, WA, USA
# Copyright 2018  "nobodino", Bordeaux, FRANCE
# All rights reserved.
#
# Redistribution and use of this script, with or without modification, is
# permitted provided that the following conditions are met:
#
# 1. Redistributions of this script must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#
#  THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
#  WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
#  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO
#  EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
#  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
#  PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
#  OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
#  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
#  OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
#  ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
#--------------------------------------------------------------------------
#
#  Revision 0 			25102017				nobodino
#		-initial release (removed from sfsinit script)
#  Revision 1 			04032018				nobodino
#		-change RDIR* definition to be alble to copy extra/ 
#  Revision 2 			20032018				nobodino
#		-added RSYNCDIR to rsync from slackware directly without RDIR1
#		-added DLDIRxx to populate "others" directly from mirrors
#		-added variables for cargo, rustd, jdk and gnat to be adjustable
#		by the user
#  Revision 3 			01042018				nobodino
#		-removed flex-2.5.39 to build doxygen-1.8.14 (found a patch for flex-2.6.4)
#		-upgraded rust version to 1.25.0
#		-added RUSTC variable
#		-added RDIR3 and RDIR4
#  Revision 4 			22042018				nobodino
#		-upgraded jdk to 8u172
#		-added ISLVER
#  Revision 5 			29042018				nobodino
#		-changed java to extra/java jre-8u172
#  Revision 6 			18052018				nobodino
#		-upgraded rust version to 1.26.0
#  Revision 7 			26062018				nobodino
#		-upgraded rust version to 1.27.0
#
#	Above july 2018, revisions made through github project: https://github.com/nobodino/slackware-from-scratch 
#
##########################################################################
# set -x
#*******************************************************************
# the rsync mirror from which you get the slackware source tree
#*******************************************************************
# export RSYNCDIR=rsync://mirror.slackbuilds.org/slackware/slackware-current
# export RSYNCDIR=rsync://mirrors.slackware.bg/slackware/slackware-current
# export RSYNCDIR=rsync://slackware.uk/slackware/slackware-current
export RSYNCDIR=rsync://bear.alienbase.nl/mirrors/slackware/slackware64-current
#*******************************************************************
# the mirrors from which we download files to populate "others" directly
#*******************************************************************
export DLDIR2=ftp://slackware.uk/slackware/slackware-14.1
export DLDIR3=ftp://slackware.uk/slackware/slackware-14.2
export DLDIR4=ftp://slackware.uk/slackware/slackware64-14.1
export DLDIR5=ftp://slackware.uk/slackware/slackware64-14.2
export DLDIR6=http://mirror.eu.oneandone.net/linux/distributions/gentoo/gentoo/distfiles
export DLDIR9=http://download.oracle.com/otn-pub/java/jdk/8u192-b12/750e1c8617c5452694857ad95c3ee230/jre-8u192-linux-i586.tar.gz
export DLDIR10=http://download.oracle.com/otn-pub/java/jdk/8u192-b12/750e1c8617c5452694857ad95c3ee230/jre-8u192-linux-x64.tar.gz
export DLDIR11=https://slackbuilds.org/slackbuilds/14.2
#*******************************************************************
# jdk versions
#*******************************************************************
export ISLVER="0.18"
export JDK="8u192"
export GNAT_x86="gnat-gpl-2014-x86-linux-bin.tar.gz"
export GNAT_x86_64="gnat-gpl-2017-x86_64-linux-bin.tar.gz"
export GREEN="\\033[1;32m"
export NORMAL="\\033[0;39m"
export RED="\\033[1;31m"
export PINK="\\033[1;35m"
export BLUE="\\033[1;34m"
export YELLOW="\\033[1;33m"
#*******************************************************************
