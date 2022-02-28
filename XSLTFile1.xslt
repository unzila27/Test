<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
		<html>
			<head>
				<style>
					table
					{
					width:100%;
					margin:0 auto;
					text-align:center;
					}
					tr:nth-child(even)
					{
					background-color:lightgreen;
					}
					tr:nth-child(odd)
					{
					background-color:lightblue;
					}
				</style>
			</head>
			<body>
				<table border="1">
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Batch</th>
						<th>Semester</th>
					</tr>
					<xsl:for-each select="/info/Student">
						<tr>
							<td>
								<xsl:value-of select="ID"/>
							</td>
							<td>
								<xsl:value-of select="Name"/>
							</td>
							<td>
								<xsl:value-of select="Batch"/>
							</td>
							<td>
								<xsl:value-of select="Semester"/>
							</td>
							
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
       
    </xsl:template>
</xsl:stylesheet>
