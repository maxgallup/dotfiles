#!/bin/bash

text_mimes=( "inode/directory" "text/plain" "text/css" "text/javascript" "text/mathml" "text/x-c++hdr" "text/x-c++src" "text/x-csrc" "text/x-chdr" "text/x-dtd" "text/x-java" "text/x-javascript" "text/x-makefile" "text/x-moc" "text/x-pascal" "text/x-patch" "text/x-perl" "text/x-php" "text/x-python" "text/x-sql" "text/x-tcl" "text/x-tex" "text/xml" "text/markdown" "application/javascript" "application/x-cgi" "application/x-javascript" "application/x-perl" "application/x-php" "application/x-python" "application/x-shellscript" "application/xml" "application/xml-dtd")
video_mimes=( "video/1d-interleaved-parityfec" "video/3gpp" "video/3gpp-tt" "video/3gpp2" "video/annodex" "video/AV1" "video/BMPEG" "video/BT656" "video/CelB" "video/dl" "video/DV" "video/dv" "video/encaprtp" "video/example" "video/FFV1" "video/flexfec" "video/fli" "video/gl" "video/H261" "video/H263" "video/H263-1998" "video/H263-2000" "video/H264" "video/H264-RCDO" "video/H264-SVC" "video/H265" "video/iso.segment" "video/JPEG" "video/jpeg2000" "video/jxsv" "video/mj2" "video/MP1S" "video/MP2P" "video/MP2T" "video/mp4" "video/MP4V-ES" "video/mpeg" "video/mpeg4-generic" "video/MPV" "video/nv" "video/ogg" "video/parityfec" "video/pointer" "video/quicktime" "video/raptorfec" "video/raw" "video/rtp-enc-aescm128" "video/rtploopback" "video/rtx" "video/scip" "video/smpte291" "video/SMPTE292M" "video/ulpfec" "video/vc1" "video/vc2" "video/vnd.CCTV" "video/vnd.dece.hd" "video/vnd.dece.mobile" "video/vnd.dece.mp4" "video/vnd.dece.pd" "video/vnd.dece.sd" "video/vnd.dece.video" "video/vnd.directv.mpeg" "video/vnd.directv.mpeg-tts" "video/vnd.dlna.mpeg-tts" "video/vnd.dvb.file" "video/vnd.fvt" "video/vnd.hns.video" "video/vnd.iptvforum.1dparityfec-1010" "video/vnd.iptvforum.1dparityfec-2005" "video/vnd.iptvforum.2dparityfec-1010" "video/vnd.iptvforum.2dparityfec-2005" "video/vnd.iptvforum.ttsavc" "video/vnd.iptvforum.ttsmpeg2" "video/vnd.motorola.video" "video/vnd.motorola.videop" "video/vnd.mpegurl" "video/vnd.ms-playready.media.pyv" "video/vnd.nokia.interleaved-multimedia" "video/vnd.nokia.mp4vr" "video/vnd.nokia.videovoip" "video/vnd.objectvideo" "video/vnd.radgamettools.bink" "video/vnd.radgamettools.smacker" "video/vnd.sealed.mpeg1" "video/vnd.sealed.mpeg4" "video/vnd.sealed.swf" "video/vnd.sealedmedia.softseal.mov" "video/vnd.uvvu.mp4" "video/vnd.vivo" "video/vnd.youtube.yt" "video/VP8" "video/VP9" "video/webm" "video/x-flv" "video/x-la-asf" "video/x-matroska" "video/x-mng" "video/x-ms-wm" "video/x-ms-wmv" "video/x-ms-wmx" "video/x-ms-wvx" "video/x-msvideo" "video/x-sgi-movie")


for type in "${text_mimes[@]}"; do
    xdg-mime default "codium.desktop" $type
    xdg-mime query default $type
done

for type in "${video_mimes[@]}"; do
    xdg-mime default "vlc.desktop" $type
    xdg-mime query default $type
done



