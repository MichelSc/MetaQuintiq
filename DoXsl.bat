REM -xi: supports for XInclude
REM -t: Display version and timing information to the standard error output.
REM -s: Identifies the source file or directory.
REM -o: Send output to named file.  
"C:\Program Files\Java\jre1.8.0_91\bin\java.exe" -Xmx3000m -jar "C:\Program Files\Saxon\bin\saxon9he.jar" -xi:on -t -s:AllElements.xml -xsl:ExportToXMI.xsl -o:model.uml 
