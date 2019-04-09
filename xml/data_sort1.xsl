<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <tr>
                        <th>First name</th>
                        <th>Last name</th>
                        <th>Birth date</th>
                    </tr>
                    <xsl:for-each select="personal_data/person">
                        <xsl:sort select="last_name" />
                        <tr>
                            <td><xsl:value-of select="first_name" /></td>
                            <td><xsl:value-of select="last_name" /></td>
                            <td><xsl:value-of select="birth_date/day" />-<xsl:value-of select="birth_date/month" />-<xsl:value-of select="birth_date/year" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>