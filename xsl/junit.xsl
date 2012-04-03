<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet" href="reset.css" type="text/css" />
				<link rel="stylesheet" href="junit.css" type="text/css" />
			</head>
			<body>
				<h1>Tests</h1>
				<table id="alltests">
				<xsl:for-each select="testsuites/testsuite/testsuite">
					<xsl:variable name="alltests-class">
						<xsl:choose>
							<xsl:when test="@failures='0'">nofail</xsl:when>
							<xsl:otherwise>fail</xsl:otherwise>
						</xsl:choose>
					</xsl:variable>
					<tr class="{$alltests-class}">
						<td colspan="5"><h2><xsl:value-of select="@name"/></h2></td>
					</tr>
					<tr class="{$alltests-class}">
						<th>tests</th>
						<th>assertions</th>
						<th>failures</th>
						<th>errors</th>
						<th>time</th>
					</tr>
					<tr class="{$alltests-class}">
						<td><xsl:value-of select="@tests"/></td>
						<td><xsl:value-of select="@assertions"/></td>
						<td><xsl:value-of select="@failures"/></td>
						<td><xsl:value-of select="@errors"/></td>
						<td><xsl:value-of select="@time"/></td>
					</tr>
					<tr>
						<td colspan="5">
							<table id="typetests">
							<xsl:for-each select="testsuite">
								<xsl:variable name="typetests-class">
									<xsl:choose>
										<xsl:when test="@failures='0'">nofail</xsl:when>
										<xsl:otherwise>fail</xsl:otherwise>
									</xsl:choose>
								</xsl:variable>
								<tr class="{$typetests-class}">
									<td colspan="5"><h3><xsl:value-of select="@name"/></h3></td>
								</tr>
								<tr class="{$typetests-class}">
									<th>tests</th>
									<th>assertions</th>
									<th>failures</th>
									<th>errors</th>
									<th>time</th>
								</tr>
								<tr class="{$typetests-class}">
									<td><xsl:value-of select="@tests"/></td>
									<td><xsl:value-of select="@assertions"/></td>
									<td><xsl:value-of select="@failures"/></td>
									<td><xsl:value-of select="@errors"/></td>
									<td><xsl:value-of select="@time"/></td>
								</tr>
								<tr>
									<td colspan="5">
										<table id="tests">
										<xsl:for-each select="testcase">
											<xsl:variable name="tests-class">
												<xsl:choose>
													<xsl:when test="@failures='0'">nofail</xsl:when>
													<xsl:otherwise>fail</xsl:otherwise>
												</xsl:choose>
											</xsl:variable>
											<tr>
												<td colspan="5"><h4><xsl:value-of select="@name"/></h4></td>
											</tr>
											<tr>
												<th>class</th>
												<th>file</th>
												<th>line</th>
												<th>assertions</th>
												<th>time</th>
											</tr>
											<tr>
												<td><xsl:value-of select="@class"/></td>
												<td><xsl:value-of select="@file"/></td>
												<td><xsl:value-of select="@line"/></td>
												<td><xsl:value-of select="@assertions"/></td>
												<td><xsl:value-of select="@time"/></td>
											</tr>
											<tr>
												<td colspan="5"><xsl:value-of select="failure"/></td>
											</tr>
										</xsl:for-each>
										</table>
									</td>
								</tr>
							</xsl:for-each>
							</table>
						</td>
					</tr>
				</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
