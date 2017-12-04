<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns="http://www.w3.org/1999/xhtml">
<xsl:template match="student">
<html><head><title>style sheet</title></head>

<xsl:for-each select="stud1">
	<body>
	<h2>student info</h2>
	<hr></hr>

	<span style="font-style:italic;
		color:blue;">usn:</span>
	<xsl:value-of select="usn"/><br></br>

	<span style="font-style:italic;
		     color:blue;">name:</span>
        <xsl:value-of select="name"/><br></br>

	<span style="font-style:italic;
	      color:blue;">noc:</span>
      <xsl:value-of select="noc"/><br></br>

	<span style="font-style:italic;
		                color:blue;">branch:</span>
			        <xsl:value-of select="branch"/><br></br>

	<span style="font-style:italic;
		                color:blue;">yoj:</span>
			        <xsl:value-of select="yoj"/><br></br>


	<span style="font-style:italic;
		                color:blue;">eid:</span>
			        <xsl:value-of select="eid"/><br></br>


	</body>
</xsl:for-each>
</html>
</xsl:template>
</xsl:stylesheet>



