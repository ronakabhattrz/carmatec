# PRODUCTS
# ========
# id  name
# --- --------
# 1   Widget 1
# 2   Widget 2
# 3   Widget 3

product1 = Product.create(name: "Widget 1")
product2 = Product.create(name: "Widget 1")
product3 = Product.create(name: "Widget 1")

# PRODUCT_VARIANTS
# ================
# id  product_id name
# --- ---------- ------
# 1   1          Size   (Widget 1)
# 2   1          Color  (Widget 1)
# 3   2          Size   (Widget 2)
# 4   3          Class  (Widget 3)
# 5   3          Size   (Widget 3)

product1.product_variants << ProductVariant.create(name: "Size (Widget 1)")
product1.product_variants << ProductVariant.create(name: "Color (Widget 1)")

product2.product_variants << ProductVariant.create(name: "Size (Widget 2)")

product3.product_variants << ProductVariant.create(name: "Class (Widget 3)")
product3.product_variants << ProductVariant.create(name: "Size (Widget 3)")


# PRODUCT_VARIANT_OPTIONS
# =======================
# id  product_variant_id name
# --- ------------------ -------------
# 1   1                  Small (Widget 1; Size)
# 2   1                  Large (Widget 1; Size)
# 3   2                  White (Widget 1; Color)
# 4   2                  Black (Widget 1; Color)
# 5   3                  Small (Widget 2; Size)
# 6   3                  Medium (Widget 2; Size)
# 7   4                  Amateur (Widget 3; Class)
# 8   4                  Professional (Widget 3; Class)
# 9   5                  Medium (Widget 3; Size)
# 10  5                  Large (Widget 3; Size)

pv_details = ["Small (Widget 1; Size)", "Large (Widget 1; Size)", "White (Widget 1; Color)", "Black (Widget 1; Color)", "Small (Widget 2; Size)",
	"Medium (Widget 2; Size)", "Amateur (Widget 3; Class)", "Professional (Widget 3; Class)", "Medium (Widget 3; Size)", "Large (Widget 3; Size)"]

ProductVariant.all.each do |pv|
	pv.product_variant_options << ProductVariantOption.create(name: pv_details.sample)
end

# SKUS
# ====
# id  product_id sku    price
# --- ---------- ------ -----
# 1   1          W1SSCW    10 (Widget 1)
# 2   1          W1SSCB    10 (Widget 1)
# 3   1          W1SLCW    12 (Widget 1)
# 4   1          W1SLCB    15 (Widget 1)
# 5   2          W2SS     100 (Widget 2)
# 6   2          W2SM     100 (Widget 2)
# 7   3          W3CASM    50 (Widget 3)
# 8   3          W3CASL    50 (Widget 3)
# 9   3          W3CPSM   150 (Widget 3)
# 10  3          W3CPSL   160 (Widget 3)

p_skus = [["W1SSCW","10"], ["W1SSDW","100"], ["T1SSCW","90"], ["W1CDSCW","59"], ["WDKSCW","19"], ["L1KSCW","99"], ["W1SLOCW","100"],["W1SSCW","100"]]

Product.all.each_with_index do |product, index|
	
end
