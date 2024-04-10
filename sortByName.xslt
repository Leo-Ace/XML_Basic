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
                <xsl:sort select="name" data-type="text" order="descending"/>
                <tr>
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