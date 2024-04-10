<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0 " xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"></xsl:output>
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"/>
      </head>
      <body>
        <div class="container">
          <h3 class="my-3">Danh sách sản phẩm</h3>
          <table class="table-bordered table table-hover" >
            <thead>
              <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Category_id</th>
                <th>Description</th>
                <th>Amount</th>
                <th>Price</th>
                <th>Size</th>
                <th>Image</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="DSSanpham/Sanpham">
                <xsl:variable name="checkPrice" select="price > 100"/>
                <xsl:variable name="checkSize" select="size = 'XXL'"/>
                <tr>
                  <xsl:if test="$checkPrice and $checkSize">
                    <xsl:attribute name="style">font-weight: 600</xsl:attribute>
                  </xsl:if>
                  <td><xsl:value-of select="id"/></td>
                  <td><xsl:value-of select="name"/></td>
                  <td><xsl:value-of select="category_id"/></td>
                  <td><xsl:value-of select="description"/></td>
                  <td><xsl:value-of select="amount"/></td>
                  <td><xsl:value-of select="price"/></td>
                  <td><xsl:value-of select="size"/></td>
                  <td><img width="50px" src="{ image }" alt="{image/@type}"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>