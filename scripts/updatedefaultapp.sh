#!/bin/bash

filetypes=(
"text/plain" 
"text/css"
"text/javascript"
"text/mathml"
"text/x-c++hdr"
"text/x-c++src"
"text/x-csrc"
"text/x-chdr"
"text/x-dtd"
"text/x-java"
"text/x-javascript"
"text/x-makefile"
"text/x-moc"
"text/x-pascal"
"text/x-patch"
"text/x-perl"
"text/x-php"
"text/x-python"
"text/x-sql"
"text/x-tcl"
"text/x-tex"
"text/xml"
"text/markdown"
"application/javascript"
"application/x-cgi"
"application/x-javascript"
"application/x-perl"
"application/x-php"
"application/x-python"
"application/x-shellscript"
"application/xml"
"application/xml-dtd"
)


for type in "${filetypes[@]}"; do
  xdg-mime default lvim.desktop $type
  xdg-mime query default $type
done

