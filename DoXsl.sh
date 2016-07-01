# -xi: supports for XInclude
# -t: Display version and timing information to the standard error output.
# -s: Identifies the source file or directory.
# -o: Send output to named file.  
/usr/bin/java -Xmx3000m -jar "/home/michel/bin/SaxonHE9-7-0-6J/saxon9he.jar" -xi:on -t -s:AllElements.xml -xsl:ExportToXMI.xsl -o:model.uml 
