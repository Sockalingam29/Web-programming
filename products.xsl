<?xml version = "1.0" encoding = "UTF-8"?>  
<xsl:stylesheet version = "2.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">     

   <xsl:template match = "/">  
      <html>
         <link rel="stylesheet" type="text/css" href="home.css"/>
         <body>  
            <div class="products-grid">
                <xsl:for-each select="products/product">   
                    <div class="product-item">
                    <img>
                        <xsl:attribute name="src">
                        <xsl:value-of select="image"/>
                        </xsl:attribute>
                    </img>
                    <h3><xsl:value-of select = "name"/></h3>
                    <p>Rs <xsl:value-of select = "price"/></p>
                </div>
                </xsl:for-each>
            </div>
         </body>   
      </html>   
   </xsl:template>    
</xsl:stylesheet>  
